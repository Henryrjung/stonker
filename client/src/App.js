import React from 'react';
import './App.css';
import Navbar from "../src/components/Navbar/Navbar"
import LoginForm from "../src/components/LoginForm/LoginForm"
function App() {
  return (

    <div className='App'>
      <Navbar/>
  <LoginForm/>
    </div>

  );
}

export default App;
