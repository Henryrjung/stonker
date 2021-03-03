import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import AppBar from "@material-ui/core/AppBar";
import "./style.css"
import Grid from "@material-ui/core/Grid";
import heroimage from "./hero-image.png";
import CardMedia from "@material-ui/core/CardMedia";

const useStyles = makeStyles((theme) => ({
  root: {
    flexGrow: 1,
  },
}));

function Hero() {
  const classes = useStyles();

  return (
    <div className={classes.root}>
          <AppBar position="static" className="hero">
            <CardMedia
              component="img"
              alt="headimg"
              width="700px"
              image={heroimage}
              title=""
              className="img-hero"
            />
          </AppBar>

    </div>
  );
}

export default Hero;
