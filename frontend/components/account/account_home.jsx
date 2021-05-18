import React from 'react';
import { Link } from 'react-router-dom';

class AccountHome extends React.Component {

    render () {

        debugger

        return (
            <div className="account-home">

                <div className="index-container">
                    <h1 className="index">Index</h1>
                    <Link className="linkz" to="/account">MY ACCOUNT</Link>
                    <Link className="linkz" to="/addresses">ADDRESS BOOK</Link>
                    <Link className="linkz" to="/orders">MY ORDERS</Link>
                    <Link className="logout-button" to="/" onClick={this.props.logout}>LOGOUT</Link>
                </div>

                <div className="greeting-header">
                    <h1 className="greeting">Hello, Forrest</h1>
                    {/* dummy value!! need to fix tomorrow 5/18 */}
                    <p className="summary">Welcome to your dashboard, from here you are able to view your address book as well as past orders.</p>
                </div>

                <div className="inner-grid">
                    <div>
                        <h3 className="inner-info">Account Information</h3>
                        <p className="contact-info">Contact Information</p>
                        <p className="name">Forrest Willow</p>
                        <p className="name">plantlyfe@gmail.com</p>
                        {/* ^^^dummy text// need to fix this!! */}
                    </div>
                    <div>
                        <h3 className="inner-info">Address Book</h3>
                        <Link className="manage-addresses" to="/addresses">Manage Addresses (3)</Link>
                        {/* ^need to make the address number dynamic */}
                        <p className="rig-for-manage-address-space">427 Garden St</p>
                        <p>Apt 7E</p>
                        <p>Brooklyn, NY</p>
                        <p>United States</p>
                        <p>11206</p>
                        <p>919.723.6142</p>
                    </div>
                </div>

                <h1 className="my-orders">My Orders</h1>

                <div className="order-headers">
                    <h4 className="order-titles">ORDER</h4>
                    <h4 className="order-titles">DATE</h4>
                    <h4 className="order-titles">PAYMENT STATUS</h4>
                    <h4 className="order-titles">FULFILLMENT STATUS</h4>
                    <h4 className="order-titles">TOTAL</h4>
                </div>   
                    {/* <div className="underline-filler"></div> */}
                    {/* or make two separate grids with an underline on the top one! */}
                <div className="order-info">
                    <Link className="order-number" to="/orders">#40985</Link>
                    <p>May 14, 2021</p>
                    <p>paid</p>
                    <p>partial</p>
                    <p>$237.92</p>
                </div>





            </div>

        )
    }

}

export default AccountHome;