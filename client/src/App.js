
import React from "react";
import "./App.css";
import { BrowserRouter as Router, Route } from "react-router-dom";
import Navbar from "./components/Navbar/Navbar";
import LoginForm from "./components/LoginForm/LoginForm";
import Container from '@material-ui/core/Container';

function App() {
  return (
    <Router>
       <Navbar />
      <Container>
      <div>
        <LoginForm/>
      </div>
      </Container>
    </Router>

  );
}

export default App;
