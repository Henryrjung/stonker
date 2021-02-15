import React from "react";
import { Link } from 'react-router-dom';
import './Navbar.css';

function Navbar() {
  return (
    <>
      <nav className='navbar'>
          <h1 className='navbar-logo'>Stonker</h1>
          <ul className='nav-items'>
              <li>
                <Link className='nav-links'>Home</Link>
              </li>
              <li>
                <Link className='nav-links'>About</Link>
              </li>
              <li>
                <Link className='nav-links'>Login</Link>
              </li>
          </ul>
      </nav>
    </>
  );
}

export default Navbar;
