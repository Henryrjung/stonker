import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import Card from "@material-ui/core/Card";
import CardActions from "@material-ui/core/CardActions";
import CardContent from "@material-ui/core/CardContent";
import Button from "@material-ui/core/Button";
import Container from "@material-ui/core/Container";
import Typography from "@material-ui/core/Typography";
import TextField from '@material-ui/core/TextField';
import { Link } from "react-router-dom";
import "./style.css";

const useStyles = makeStyles({
  root: {
    minWidth: 275,
    maxWidth: 1280,
  },
  title: {
    fontSize: 14,
    fontWeight: 600,
  },
  pos: {
    marginBottom: 12,
  },
});

const NewComment= (props) => {
  const classes = useStyles();

  console.log(props)
  return (
    <Container className="contain">
      <Card className={classes.root} id="card">
        <CardContent>
        <TextField
          id="outlined-multiline-static"
          label="New Comment"
          multiline
          className="textfield"
          rows={8}
          variant="outlined"
        />
        </CardContent>
        <CardActions>
          <Button size="small">
            <Link to="/home" className={window.location.pathname === "/home"}>
              Post
            </Link>
          </Button>
        </CardActions>
      </Card>
    </Container>
  );
};

export default NewComment;
