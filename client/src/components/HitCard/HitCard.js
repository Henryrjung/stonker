import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';
import { Link } from "react-router-dom";

import "./style.css";

const useStyles = makeStyles({
  root: {
    minWidth: 275,
    maxWidth: 600,
  },
  title: {
    fontSize: 14,
    fontWeight: 600,
  },
  head: {
    fontWeight: 600,
  },
  pos: {
    marginBottom: 12,
  },
});

function HitCard(props) {
  const classes = useStyles();

  return (
    <Card className={classes.root} id="card">
      <CardContent>
        <Typography
          className={classes.title}
          color="textSecondary"
          gutterBottom
        >
          Trending Now
        </Typography>
        <Typography
          variant="h5"
          component="h2"
          id="head"
          className={classes.head}
        >
          {props.symbol}
        </Typography>
        <Typography className={classes.pos} color="textSecondary">
          Stock Ticker and Price
        </Typography>
      </CardContent>
      <CardActions>
      <Button size="small">
                <Link
                  to="/blog"
                  className={
                    window.location.pathname === "/blog"
                  }
                >
                  See what others are saying...
                </Link>
              </Button>
      </CardActions>
    </Card>
  );
}

export default HitCard;
