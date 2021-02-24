import React, { Component } from "react";
import MessageBoard from "../MessageBoard/MessageBoard";
import Container from "@material-ui/core/Container";
import Grid from "@material-ui/core/Grid";

const BlogContainer = ({ hit }) => {

  return (
    <Container maxWidth="sm">
      <Grid container spacing={3}>
        <Grid item xs={12}>
          <div>
            <MessageBoard
              key={hit?.id}
              id={hit?.id}
              company={hit?.Company?.company}
            />
          </div>
        </Grid>
      </Grid>
    </Container>
  );
};

export default BlogContainer;
