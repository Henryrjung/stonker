import React, { Component } from 'react';
// import Container from "./Container";
// import SearchForm from "./SearchForm/SearchForm";
import HitCard from '../HitCard/HitCard';
import Container from '@material-ui/core/Container';
import Ticker from '../Ticker/Ticker';
import Grid from '@material-ui/core/Grid';
import { getTopHits } from '../../utils/API';

class InfoContainer extends Component {
  state = {
    hits: []
    //   filterRun: [],
    //   nameSort: 0,
    //   search: "",
  };

  // topHits = async () => {
  //
  //     getTopHit.data.forEach((hits, id) => {
  //       hits.key=id;
  //     });
  //     this.setState({ hits: getTopHit.data });
  // };

  componentDidMount() {
    getTopHits().then((res) => {
      console.log('res.data :>> ', res.data);
      this.setState({ hits: res.data });
    });
  }

  //   handleInputChange = (event) => {
  //       const { value } = event.target;
  //       const filterRun = this.state.hits.filter((hits) =>
  //         hits.symbol.includes(value));
  //         this.setState({
  //           search: value, filterRun,
  //         });
  //       };

  render() {
    return (
      <Container maxWidth='sm'>
        <Grid container spacing={3}>
          <Grid item xs={12}>
            <div>
              <Ticker />
              {/* <SearchForm
                searchInput={this.state.search}
                handleInputChange={this.handleInputChange}
                filterRes={this.sorting}
            /> */}
            </div>
            <div>
              <h2>Trending Hits</h2>
              {this.state.hits.map((hit) => {
                return (
                  <HitCard
                    key={hit.id}
                    id={hit.id}
                    symbol={hit.Company.symbol}
                    company={hit.Company.company}
                  />
                );
              })}
            </div>
          </Grid>
        </Grid>
      </Container>
    );
  }
}

export default InfoContainer;
