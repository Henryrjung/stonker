import React, { useEffect, useState } from 'react';
import BlogContainer from '../components/BlogContainer/BlogContainer';
import Marquee from '../components/Marquee/Marquee';
import MessageBoard from '../components/MessageBoard/MessageBoard';
import { getOneHit } from '../utils/API';
import { useParams } from 'react-router-dom';
import { useUserProvider } from '../utils/UserProvider';
import LoginForm from '../components/LoginForm/LoginForm';

function Blog(props) {
  const { user, setUser } = useUserProvider();
  const [hit, setHit] = useState({
    Comments: []
  });

  const { id } = useParams();
  useEffect(() => {
    getOneHit(id)
      .then((res) => {
        // see more
        const data = res?.data?.[0];

        //
        const commentData = res?.data[0].Comments;

        //
        if (data) {
          setHit(data);
        }
      })
      .catch((err) => console.log(err));
  }, []);

  if (user.id) {
    return (
      <BlogContainer hit={hit}>
        <Marquee />
        {/* <MessageBoard /> */}
      </BlogContainer>
    );
  } else {
    return <LoginForm />;
  }
}

export default Blog;
