import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({ currentUser, logout }) => {
    const signUpLogInGreeting = () =>  (
        <nav className="header-group">
            <button className="search-modal"><i className="fas fa-search">&nbsp;</i></button>
            <Link to="/login" className="user-icon"><i className="far fa-user"></i></Link>
            <Link to="/cart" className="shopping-cart"><i className="fas fa-shopping-cart"></i></Link>
            {/* &nbsp;//&nbsp; */}
            {/* <Link to="./signup" className="signup">SIGN UP</Link> */}
        </nav>
    );

    const logInGreeting = () => (
        <div className="header-group">
            {/* <h2 className="header-greeting">Welcome, {currentUser.first_name} // &nbsp;</h2> */}
            <button className="search-modal"><i className="fas fa-search">&nbsp;</i></button>
            <Link to="/account" className="user-icon"><i className="far fa-user"></i></Link>
            {/* make above to go back to account page */}
            <p>&nbsp;|&nbsp;&nbsp;</p>
            <button className="header-button" onClick={logout}>LOGOUT</button>
            <Link to="/cart" className="shopping-cart"><i className="fas fa-shopping-cart"></i></Link>
        </div>
    );

    return currentUser ? logInGreeting() : signUpLogInGreeting();
}

export default Greeting;