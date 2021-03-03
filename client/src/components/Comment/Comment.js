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
  let time = new Date(props.created);
  const yesterday = new Date(new Date() - 24 * 60 * 60 * 1000).setHours(
    0,
    0,
    0,
    0
  );
  const midnight = new Date().setHours(0, 0, 0, 0);
  if (time > midnight) {
    time = time.getUTCHours() - new Date().getUTCHours();
    time = time + ' hours ago';
  } else if (time > yesterday) {
    time = ' said yesterday';
  } else {
    time = 'on ' + time.toLocaleDateString();
  }
  return (
    <Container className='contain'>
      <Card className={classes.root} id='card'>
        <CardContent>
          <Typography
            className={classes.title}
            color='textSecondary'
            gutterBottom
          >
            {`${props.user} ${time}`}
          </Typography>
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
