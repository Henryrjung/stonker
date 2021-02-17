import React from "react";
import "./App.css";
import { BrowserRouter as Router, Route } from "react-router-dom";
import Navbar from "./components/Navbar/Navbar";
import InfoContainer from "./components/InfoContainer/InfoContainer";
// import LoginForm from "./components/LoginForm/LoginForm";

function App() {
  return (
    <Router>
      <Navbar />
      <InfoContainer />
    </Router>

  );
}

export default App;
