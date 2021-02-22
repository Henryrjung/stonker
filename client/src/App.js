
import React, { useState, useEffect } from "react";
import "./App.css";
import { BrowserRouter as Router, Route } from "react-router-dom";
import Navbar from "./components/Navbar/Navbar";
import { UserProvider } from './utils/UserProvider';
import Wrapper from "./components/Wrapper";
import Home from "./pages/Home";
import Blog from "./pages/Blog";
import Login from "./pages/Login";
import Signup from "./pages/Signup";
import { getTopHits } from "./utils/API";
import Footer from './components/footer/Footer';
function App() {

  const [hitsToRender, updateHitsToRender] = useState([]);

useEffect(() => {
    getTopHits().then(({ data: { results } } ) => updateHitsToRender(results));
},[]);


  return (
    <UserProvider>
    <Router>
      <div>
      <Navbar />
      <Wrapper>
      <Route exact path="/" component={Login} />
          <Route exact path="/home" component={Home} />
          <Route exact path="/blog" component={Blog} />
          <Route exact path="/login" component={Login} />
          <Route exact path="/signup" component={Signup} />
      </Wrapper> 
      <Footer />
      </div>
    </Router>
    </UserProvider>


  );
}

export default App;
