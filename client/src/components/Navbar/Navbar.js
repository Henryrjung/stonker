import React, { useEffect } from 'react';
import { makeStyles } from '@material-ui/core/styles';
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import Button from '@material-ui/core/Button';
import IconButton from '@material-ui/core/IconButton';
import 'fontsource-roboto';
import './style.css';
import MenuIcon from '@material-ui/icons/Menu';
import { useUserProvider } from '../../utils/UserProvider';

const useStyles = makeStyles((theme) => ({
  root: {
    flexGrow: 1
  },
  menuButton: {
    marginRight: theme.spacing(2)
  },
  title: {
    flexGrow: 1
  }
}));

function Navbar() {
  const classes = useStyles();
  const { user, setUser } = useUserProvider();
  useEffect(() => {
    setUser({
      id: '5',
      first_name: 'Matt',
      last_name: 'P',
      email: 'hellow@sldkfj',
      token: '564654161'
    });
  }, []);

  console.log(user);
  return (
    <div className={classes.root}>
      <AppBar position='static' className='nav'>
        <Toolbar className='nav'>
          <IconButton edge='start' color='inherit' aria-label='menu'>
            <MenuIcon />
          </IconButton>
          <Typography variant='h6' className={classes.title}>
            Stonker
          </Typography>
          <Button>
            <a href='/Login'>Log In</a>
          </Button>
        </Toolbar>
      </AppBar>
    </div>
  );
}

export default Navbar;
