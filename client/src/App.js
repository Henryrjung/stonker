import React from 'react';
import './App.css';
import { BrowserRouter as Router, Route } from 'react-router-dom';
import Navbar from './components/Navbar/Navbar';
// import InfoContainer from "./components/InfoContainer/InfoContainer";
import Login from './pages/Login';
import Home from './pages/Home';
import { UserProvider } from './utils/UserProvider';

function App() {
  return (
    <UserProvider>
      <Router>
        <Navbar />
        <Route exact path='/' component={Home} />
        <Route exact path='/login' component={Login} />
      </Router>
    </UserProvider>
  );
}

export default App;
