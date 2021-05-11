import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({ currentUser, logout }) => {
    const signUpLogInGreeting = () =>  (
        <nav className="login-signup">
            <Link to="/login">Login</Link>
            &nbsp;or&nbsp;
            <Link to="./signup">Sign Up</Link>
        </nav>
    );

    const logInGreeting = () => (
        <hgroup className="header-group">
            <h2 className="header-greeting">Hello, {currentUser.username}</h2>
            <button  className="header-button" onClick={logout}>Logout</button>
        </hgroup>
    );

    return currentUser ? logInGreeting() : signUpLogInGreeting();
}

export default Greeting;