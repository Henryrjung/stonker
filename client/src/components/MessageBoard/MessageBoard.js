import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import Button from '@material-ui/core/Button';
import Container from '@material-ui/core/Container';
import Typography from '@material-ui/core/Typography';
import { Link } from 'react-router-dom';
import './style.css';

const useStyles = makeStyles({
  root: {
    minWidth: 275,
    maxWidth: 1280
  },
  title: {
    fontSize: 14,
    fontWeight: 600
  },
  head: {
    fontWeight: 600
  },
  pos: {
    marginBottom: 12
  }
});

const MessageBoard = (props) => {
  const classes = useStyles();
  const { company = '' } = props;

  return (
    <Container className='contain'>
      <Card className={classes.root} id='card'>
        <CardContent>
          <Typography
            className={classes.title}
            color='textSecondary'
            gutterBottom
          >
            Talk Trending
          </Typography>
          <Typography
            variant='h5'
            component='h2'
            id='head'
            className={classes.head}
          >
            {company}
          </Typography>
        </CardContent>
        <CardActions>
          <Button size='small'>
            <Link to='/home' className={window.location.pathname === '/home'}>
              Back to Home
            </Link>
          </Button>
        </CardActions>
      </Card>
      {/* Start Text Fields for Message Board  */}
      {/* I think this would be best way to execute??
   <Comments/>
   <NewComment /> */}
    </Container>
  );
};

export default MessageBoard;
