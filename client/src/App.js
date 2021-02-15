import React from "react";
import "./App.css";
import { BrowserRouter as Router, Route } from "react-router-dom";

import Navbar from "./components/nav/Navbar";

function App() {
  return (
    <Router>
      <div>
        <Navbar />
      </div>
    </Router>
  );
}

export default App;
