
import React from "react";
import "./App.css";
import { BrowserRouter as Router, Route } from "react-router-dom";
import Navbar from "./components/Navbar/Navbar";
 import { UserProvider } from './utils/UserProvider';

import Wrapper from "./components/Wrapper";
import Home from "./pages/Home";
import Login from "./pages/Login";
import Signup from "./pages/Signup";


function App() {
  return (
    <UserProvider>
    <Router>
      <div>
      <Navbar />
      <Wrapper>
      <Route exact path="/" component={Login} />
          <Route exact path="/home" component={Home} />
          <Route exact path="/login" component={Login} />
          <Route exact path="/signup" component={Signup} />
      </Wrapper> 
      </div>
    </Router>
    </UserProvider>


  );
}

export default App;
