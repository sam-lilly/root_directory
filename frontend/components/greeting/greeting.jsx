import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({ currentUser, logout }) => {
    const signUpLogInGreeting = () =>  (
        <nav className="login-signup">
            <Link to="/login" className="login">LOGIN</Link>
            &nbsp;//&nbsp;
            <Link to="./signup" className="signup">SIGN UP</Link>
        </nav>
    );

    const logInGreeting = () => (
        <div className="header-group">
            <h2 className="header-greeting">Welcome, {currentUser.first_name} // &nbsp;</h2>
            <button className="header-button" onClick={logout}>LOGOUT</button>
        </div>
    );

    return currentUser ? logInGreeting() : signUpLogInGreeting();
}

export default Greeting;