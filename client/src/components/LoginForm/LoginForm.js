import React from 'react';
import TextField from '@material-ui/core/TextField';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActionArea from '@material-ui/core/CardActionArea';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import CardMedia from '@material-ui/core/CardMedia';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';
import headimg from "./headerimg.png"




const useStyles = makeStyles((theme) => ({
  root: {
    '& .MuiTextField-root': {
      margin: theme.spacing(1),
      width: '25ch',
    },
  },
}));

function LoginForm() {
  const classes = useStyles();

  return (
    <Card className={classes.root}>
    <CardActionArea>
        <CardMedia
            component="img"
            alt="headimg"
            height="300"
            image={ headimg }
            title=""
       />
       <CardContent>
       <Typography gutterBottom variant="h5" component="h2">
            Log In
          </Typography>
    <form className={classes.root} noValidate autoComplete="off">
   
      <div>
        <TextField
          required
          id="outlined-required"
          label="Required"
          defaultValue="Hello World"
          variant="outlined"
        />
<br/><br/>
        <TextField
          id="outlined-password-input"
          label="Password"
          type="password"
          autoComplete="current-password"
          variant="outlined"
        />
        <br/><br/>
    <Button variant="contained" color="primary">
  Submit
</Button>
      </div>
    </form>
    </CardContent>
    </CardActionArea>
    <CardActions>
        <Button size="small">
            Sign Up
        </Button>
    </CardActions>
    </Card>
  );
}

export default LoginForm;