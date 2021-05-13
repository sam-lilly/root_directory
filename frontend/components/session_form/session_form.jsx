import React from 'react';
import { login } from '../../actions/session_actions';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: "",
            password: "",
            first_name: "",
            last_name: ""
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleDemoSubmit = this.handleDemoSubmit.bind(this);
    };

    componentWillUnmount() {
        this.props.clearErrors();
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    handleDemoSubmit(e) {
        e.preventDefault();
        const demUse = Object.assign({}, this.state);
        dispatch(login({ email: "plantlyfe@gmail.com", password: "password", first_name: "Forrest", last_name: "Willow" }))
    }


    renderErrors() {
        const { errors } = this.props
        return (
            <ul>
                {
                    errors.map((error, idx) => (
                        <li key={`error-${idx}`}>
                            {error}
                        </li>
                    ))
                }
            </ul>
        );
    }


    signupForm() {
        return (
            <>
                {/* <label>First Name: */}
                    <input 
                        type="text"
                        placeholder="First Name"
                        value={this.state.first_name}
                        onChange={this.update('first_name')}
                        className="login-input"        
                    />
                {/* </label> */}
                <br />
                {/* <label>Last Name: */}
                    <input 
                        type="text"
                        placeholder="Last Name"
                        value={this.state.last_name}
                        onChange={this.update('last_name')}
                        className="login-input"
                    />
                {/* </label> */}
                <br />
            </>
        );
    };


    render () {
        let signUpNameForm
        if (this.props.formType === "Create Account") {
            signUpNameForm = this.signupForm();
        };

        return (
            <div>
                <div className="top-nav-bar">
                    
                    <div className="top-nav-left">
                        <p>Root :: Directory</p>
                    </div>

                    <div className="top-nav-middle">
                        <ul>
                        <li>Shop NYC</li>
                        <li>Plant Care</li>
                        <li>Info</li>
                        </ul>
                    </div>

                    <div className="top-nav-right">
                        <p>Account</p>
                        {/* <i className="fas fa-search"></i> */}
                    </div>

                </div>


                <div className="session-form-container">
                    <form onSubmit={this.handleSubmit} className="session-form-box">
                        {/* <h1>Root Directory</h1> */}
                        <br />
                        {/* {this.props.formType} or {this.props.navLink} */}
                        {/* above was to sign in or login with link of other */}
                        <h3 className="login-signup-header">{this.props.headerType}</h3>

                        <div className="login-signup-errors">{this.renderErrors()}</div>

                        <div className="session-form">

                        {signUpNameForm}

                            {/* <br /> */}
                            {/* <label>Email: */}
                                <input 
                                    type="text"
                                    placeholder="Email Address"
                                    value={this.state.email}
                                    onChange={this.update('email')}
                                    className="login-input"        
                                />
                            {/* </label> */}
                            <br />
                            {/* <label>Password: */}
                                <input 
                                    type="password"
                                    placeholder="Password"
                                    value={this.state.password}
                                    onChange={this.update('password')}
                                    className="login-input"
                                />
                            {/* </label> */}

                            <p className="forgot-password" onClick={this.handleDemoSubmit}>Forgot your Password? Login as Demo User!</p>

                            <input
                                className="session-submit"
                                type="submit"
                                value={this.props.formType}
                            />
                            <br />
                            <p className="new-customer">{this.props.formNav}</p>
                        {/* <div className="session-submit"> */}
                            {/* <h2>Continue as Guest</h2> */}

                            <p className="session-submit">{this.props.navLink}</p>

                            <button className="session-submit" onClick={this.handleDemoSubmit}>
                                Login As Demo User
                            </button>

                        {/* </div> */}

                        </div>

                    </form>
                </div>

            </div>
        );
    }
}

export default SessionForm;