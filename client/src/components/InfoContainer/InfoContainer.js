import React, { Component } from 'react';
// import Container from "./Container";
// import SearchForm from "./SearchForm/SearchForm";
import HitCard from '../HitCard/HitCard';
import Container from '@material-ui/core/Container';
import Ticker from '../Ticker/Ticker';
import Grid from '@material-ui/core/Grid';

class InfoContainer extends Component {
  // Copied from Emp Activity for Sorting and Loading Hits
  // state = {
  //     employees: [],
  //     filterRun: [],
  //     nameSort: 0,
  //     search: "",
  //   };

  //   componentDidMount() {
  //     this.loadEmployees();
  //   }

  // handleInputChange = (event) => {
  //     const { value } = event.target;
  //     const filterRun = this.state.employees.filter((emp) =>
  //       emp.email.includes(value));
  //       this.setState({
  //         search: value, filterRun,
  //       });
  //     };

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
              <HitCard />
            </div>
          </Grid>
        </Grid>
      </Container>
    );
  }
}

export default InfoContainer;
