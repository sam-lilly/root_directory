import React from 'react';
import ReactDOM from 'react-dom';
// import configureStore from './store/store';
// import App from './components/app'

import { login, signup, logout } from './util/session_api_utils';

document.addEventListener("DOMContentLoaded", () => {

    // const store = configureStore();
    const root = document.getElementById("root");

    window.login = login;
    window.signup = signup;
    window.logout = logout;

    ReactDOM.render(<h1>root directory</h1>, root)

});