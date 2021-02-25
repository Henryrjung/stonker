import React, { useEffect } from "react";
import { makeStyles } from "@material-ui/core/styles";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import Typography from "@material-ui/core/Typography";
import Button from "@material-ui/core/Button";
import IconButton from "@material-ui/core/IconButton";
import "fontsource-roboto";
import "./style.css";
import MenuIcon from "@material-ui/icons/Menu";
import { useUserProvider } from "../../utils/UserProvider";
import { Link } from "react-router-dom";
import Grid from "@material-ui/core/Grid";

const useStyles = makeStyles((theme) => ({
  root: {
    flexGrow: 1,
  },
  menuButton: {
    marginRight: theme.spacing(2),
  },
  title: {
    flexGrow: 1,
    fontWeight: 600,
    fontSize: "30pt",
  },
}));

function Navbar() {
  const classes = useStyles();
  const { user, setUser } = useUserProvider();
  useEffect(() => {
  }, user);

  return (
    <div className={classes.root}>
      <Grid container spacing={3}>
        <Grid item xs={12}>
          <AppBar position="static" className="nav">
            <Toolbar className="nav">
              {/* <IconButton edge="start" color="inherit" aria-label="menu">
           <MenuIcon/>
          </IconButton> */}
              <Typography variant="h6" className={classes.title}>
                Stonker
              </Typography>
              <Button>
                <Link
                  to="/"
                  className={
                    window.location.pathname === "/" ||
                    window.location.pathname === "/login"
                  }
                >
                  {user.id ? "Log Out" : "Log In"}
                </Link>
              </Button>
            </Toolbar>
          </AppBar>
        </Grid>
      </Grid>
    </div>
  );
}

export default Navbar;
