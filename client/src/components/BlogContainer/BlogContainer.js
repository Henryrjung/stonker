import React, { Component } from 'react';
import MessageBoard from '../MessageBoard/MessageBoard';
import Container from '@material-ui/core/Container';
import Grid from '@material-ui/core/Grid';
import NewComment from '../NewComment/NewComment';
import Comment from '../Comment/Comment';

const BlogContainer = ({ hit, setHit }) => {
  return (
    <Container maxWidth='sm'>
      <Grid container spacing={3}>
        <Grid item xs={12}>
          <div>
            <MessageBoard
              key={hit?.id}
              id={hit?.id}
              company={hit?.Company?.company}
            />
            {hit?.Comments.map((comment) => {
              return <Comment text={comment?.comments} key={comment?.id} />;
            })}

            <NewComment hit={hit} setHit={setHit} />
          </div>
        </Grid>
      </Grid>
    </Container>
  );
};

export default BlogContainer;
