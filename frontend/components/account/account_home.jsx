import React from 'react';
import { Link } from 'react-router-dom';

class AccountHome extends React.Component {

    constructor(props) {
        // debugger
        super(props);
    }

    componentDidMount() {
        // debugger
        this.props.fetchAddresses();
    }
    // ^need to fetch main address and orders
    // figure out how to update the address when going back

    // componentDidUpdate(prevProps) {
    //     if (prevProps.address !== this.props.address) {
    //         this.props.fetchAddresses();
    //     }
    // }
    // need to figure out how to update state for addresses

    render () {

        // { first_name }
        const { currentUser, address } = this.props;

        const hasAddress = () => {
            if (address) {
                return <div>
                        <p className="rig-for-manage-address-space">{address.first} {address.last}</p>
                        <p>{address.company}</p>
                        <p>{address.address1}</p>
                        <p>{address.address2}</p>
                        <p>{address.city}, {address.state} {address.zip}</p>
                        <p>{address.country}</p>
                        <p>{address.phone}</p>
                    </div>
            } else {
                return <div>
                        {/* <br/> */}
                        {/* <Link className="manage-addresses" to="/addresses">Add A New Address!</Link> */}
                        <p className="rig-for-manage-address-space">Looks like you don't have any addresses yet.</p>
                    </div>
            }
        }

        const addOrManageAddress = () => {
            if (address) {
                return <div>
                        <Link className="manage-addresses" to="/addresses">Manage Addresses ({currentUser.numAddresses})</Link>
                    </div>
            } else {
                return <div>
                        <Link className="manage-addresses" to="/addresses">Add A New Address!</Link>
                    </div>
            }
        }

        // debugger

        return (
            <div className="account-home">

                <div className="index-container">
                    <h1 className="index">Index</h1>
                    <Link className="linkz" to="/account">MY ACCOUNT</Link>
                    <Link className="linkz" to="/addresses">ADDRESS BOOK</Link>
                    <Link className="linkz" to="/cart">MY ORDERS</Link>
                    <Link className="logout-button" to="/" onClick={this.props.logout}>LOGOUT</Link>
                </div>

                <div className="greeting-header">
                    <h1 className="greeting">Hello, {currentUser.first_name}</h1>
                    <p className="summary">Welcome to your dashboard, from here you are able to view your address book as well as past orders.</p>
                </div>

                <div className="inner-grid">
                    <div>
                        <h3 className="inner-info">Account Information</h3>
                        <p className="contact-info">Contact Information</p>
                        <p className="name">{currentUser.first_name} {currentUser.last_name}</p>
                        <p className="name">{currentUser.email}</p>
                    </div>
                    <div>
                        <h3 className="inner-info">Address Book</h3>
                        {addOrManageAddress()}
                        {hasAddress()}

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
                    <Link className="order-number" to="/account">#40985</Link>
                    {/* <Link className="order-number" to="/orders">#40985</Link> */}
                    {/* will eventually link to /orders, but for NOW /account */}
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