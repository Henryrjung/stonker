import React, { useState, useEffect } from 'react';
import { useHistory } from 'react-router-dom';
import TextField from '@material-ui/core/TextField';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import './style.css';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import CardMedia from '@material-ui/core/CardMedia';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';
import headimg from './headerimg.png';
import Container from '@material-ui/core/Container';
import { Link } from 'react-router-dom';
import Grid from '@material-ui/core/Grid';
import { useUserProvider } from '../../utils/UserProvider';
import { createUser } from '../../utils/API';

const useStyles = makeStyles((theme) => ({
  root: {
    '& .MuiTextField-root': {
      width: '50ch'
    },
    root: {
      maxWidth: 345,
      [theme.breakpoints.down('md')]: {
        maxWidth: 200
      }
    }
  }
}));

function SignUpForm() {
  let history = useHistory();
  // all hooks here forever and ever
  const [loginData, setLoginData] = useState({
    email: '',
    password: ''
  });

  const { user, setUser } = useUserProvider();
  useEffect(() => {
    setUser({
      // api call?
    });
  }, []);

  const handleSubmit = (e) => {
    e.preventDefault();
    createUser({ ...loginData }).then(() => {
      history.push('/home');
    });
  };

  return (
    <Container maxWidth='sm' className='card'>
      <Grid container spacing={3}>
        <Grid item xs={12}>
          <Card>
            <CardMedia
              component='img'
              alt='headimg'
              height='300'
              image={headimg}
              title=''
            />
            <CardContent>
              <Typography gutterBottom variant='h5' component='h2'>
                Sign Up
              </Typography>
              <form
                //className={classes.root}
                noValidate
                autoComplete='off'
                onSubmit={handleSubmit}
              >
                <div>
                  <TextField
                    required
                    value={loginData.email}
                    onChange={(e) =>
                      setLoginData({ ...loginData, email: e.target.value })
                    }
                    id='outlined-required'
                    label='Email'
                    variant='outlined'
                  />
                  <br />
                  <br />
                  <TextField
                    value={loginData.password}
                    onChange={(e) =>
                      setLoginData({ ...loginData, password: e.target.value })
                    }
                    id='outlined-password-input'
                    label='Password'
                    type='password'
                    autoComplete='current-password'
                    variant='outlined'
                  />
                  <br />
                  <br />
                  <Button
                    variant='contained'
                    className='button'
                    type='submit'
                    // disabled={state.loading}
                  >
                    Submit
                  </Button>
                </div>
              </form>
            </CardContent>

            <CardActions className='action'>
              <Button size='small'>
                <Link
                  to='/'
                  className={
                    window.location.pathname === '/' ||
                    window.location.pathname === '/login'
                  }
                >
                  Log In
                </Link>
              </Button>
            </CardActions>
          </Card>
        </Grid>
      </Grid>
    </Container>
  );
}

export default SignUpForm;
