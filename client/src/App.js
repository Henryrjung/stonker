import React from "react";
import "./App.css";
import { BrowserRouter as Router, Route } from "react-router-dom";
import Navbar from "./components/Navbar/Navbar";
import LoginForm from "./components/LoginForm/LoginForm";

function App() {
  return (
    <Router>
      <div>
        <Navbar />
        <LoginForm/>
      </div>
    </Router>
  );
}

export default App;
