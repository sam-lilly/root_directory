import React from 'react';

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
            <div>
                <br />
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
            </div>
        );
    };


    render () {
        let signUpNameForm
        if (this.props.formType === "signup") {
            signUpNameForm = this.signupForm();
        };

        return (
            <div className="session-form-container">
                <form onSubmit={this.handleSubmit} className="session-form-box">
                    <h1>Root Directory</h1>
                    <br />
                    {this.props.formType} or {this.props.navLink}
                    {this.renderErrors()}
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
                        <br />
                        <input
                            className="session-submit"
                            type="submit"
                            value={this.props.formType}
                        />
                    </div>

                    <div className="demo-user">
                        <h2>Continue as Guest</h2>
                        <button className="demo-user-button" onClick={this.handleDemoSubmit}>
                            Demo User
                        </button>

                    </div>


                </form>
            </div>
        );
    }
}

export default SessionForm;