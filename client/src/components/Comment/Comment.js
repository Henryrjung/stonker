import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardContent from '@material-ui/core/CardContent';
import Container from '@material-ui/core/Container';
import Typography from '@material-ui/core/Typography';
import './style.css';

const useStyles = makeStyles({
  root: {
    minWidth: 275,
    maxWidth: 1280
  },
  pos: {
    marginBottom: 12
  }
});

const Comment = (props) => {
  const classes = useStyles();

  console.log(props);
  return (
    <Container className='contain'>
      <Card className={classes.root} id='card'>
        <CardContent>
          <Typography
            className={classes.pos}
            color='textSecondary'
            id='comment'
          >
            {props.text}
         
          </Typography>
        </CardContent>
      </Card>
    </Container>
  );
};

export default Comment;
