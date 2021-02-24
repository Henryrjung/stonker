import React, { useEffect, useState } from "react";
import BlogContainer from "../components/BlogContainer/BlogContainer";
import Marquee from '../components/Marquee/Marquee';
import MessageBoard from "../components/MessageBoard/MessageBoard";
import { getOneHit } from "../utils/API";
import { useParams } from "react-router-dom";

function Blog(props) {
const [hit, setHit] = useState({})
console.log(hit)

const {id} = useParams()
useEffect(() => {
    getOneHit(id)
    .then(res => {
        const data = res?.data?.[0];
        if (data) {
            setHit(data)}
        })
    .catch(err => console.log(err));
}, [])

  return (

        <BlogContainer
        hit={hit}>
        <Marquee />
        <MessageBoard />
  </BlogContainer>

  );
}


export default Blog;
