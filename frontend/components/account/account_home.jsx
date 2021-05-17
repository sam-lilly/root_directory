import React from 'react';
import { Link } from 'react-router-dom';

class AccountHome extends React.Component {

    render () {
        return (
            <div className="account-home">
                <h1>Index</h1>
                <Link to="/addresses">Addresses</Link>
            </div>

        )
    }

}

export default AccountHome;