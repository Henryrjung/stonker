import React, { useState } from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import Button from '@material-ui/core/Button';
import Container from '@material-ui/core/Container';
import Typography from '@material-ui/core/Typography';
import TextField from '@material-ui/core/TextField';
import { Link } from 'react-router-dom';
import './style.css';
import { newComment, getOneHit, getCommentsByHit } from '../../utils/API';
import { useUserProvider } from '../../utils/UserProvider';

const useStyles = makeStyles({
  root: {
    minWidth: 275,
    maxWidth: 1280
  },
  title: {
    fontSize: 14,
    fontWeight: 600
  },
  pos: {
    marginBottom: 12
  }
});

const NewComment = ({ hit, setHit }) => {
  const classes = useStyles();

  const [comment, setComment] = useState({
    comment: ''
  });
  const { user, setUser } = useUserProvider();

  const handleNewComment = async () => {
    const commentData = {
      comments: comment.comment,
      userId: user.id,
      topHitId: hit.id
    };
    try {
      await newComment(commentData);
      const res = await getOneHit(hit.id);
      const hitData = res?.data?.[0];
      const allComments = await getCommentsByHit(hit.id);
      if (hitData && allComments) {
        hitData.Comments = allComments.data;
        setHit(hitData);
        setComment({ comment: '' });
      }
    } catch (err) {
      console.error(err);
    }
  };

  return (
    <Container className='contain'>
      <Card className={classes.root} id='card'>
        <CardContent>
          <TextField
            id='outlined-multiline-static'
            label='New Comment'
            multiline
            className='textfield'
            rows={8}
            variant='outlined'
            value={comment.comment}
            onChange={(e) => setComment({ comment: e.target.value })}
          />
        </CardContent>
        <CardActions>
          <Button size='small' onClick={handleNewComment}>
            <Link className={window.location.pathname === '/home'}>Post</Link>
          </Button>
        </CardActions>
      </Card>
    </Container>
  );
};

export default NewComment;
