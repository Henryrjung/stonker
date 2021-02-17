import React from "react";
import TextField from "@material-ui/core/TextField";
import { makeStyles } from "@material-ui/core/styles";

const useStyles = makeStyles((theme) => ({
  root: {
    "& .MuiTextField-root": {
      margin: theme.spacing(1),
      width: "25ch",
    },
  },
}));

const Search = (props, handleInputChange) => {
  const classes = useStyles();

  return (
    <form className={classes.root} noValidate autoComplete="off">
      <div className="input-field">
        <TextField
          id="outlined-search"
          label="Search field"
          type="search"
          variant="outlined"
          onChange={props.handleInputChange}
          value={props.search}
        />
      </div>
    </form>
  );
};

export default Search;
