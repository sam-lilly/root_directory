import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { login, clearErrors } from '../../actions/session_actions';
import SessionForm from './session_form';

const mSTP = ({ errors }) => ({
    errors: errors.session,
    formType: 'Login',
    headerType: 'Login',
    formNav: "New Customer?",
    navLink: <Link to="/signup">Create Account</Link>,
    navLinkInRender: "/signup",
    navText: 'Create Account'
});

const mDTP = (dispatch) => ({
    processForm: (user) => dispatch(login(user)),
    clearErrors: () => dispatch(clearErrors())
});

export default connect (mSTP, mDTP)(SessionForm);