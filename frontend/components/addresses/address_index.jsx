import React from 'react';
import { Link } from 'react-router-dom';
import AddressIndexItem from './address_index_item';

class AddressIndex extends React.Component {

    componentDidMount() {
        this.props.fetchAddresses()
    }

    render () {

        let { addresses, deleteAddress, fetchAddress } = this.props;
        
        if (!addresses) return null;

        return (
            <div className="address-index">
                
                <div className="index-container">
                    <h1 className="index">Index</h1>
                    <Link className="linkz" to="/account">MY ACCOUNT</Link>
                    <Link className="linkz" to="/addresses">ADDRESS BOOK</Link>
                    <Link className="linkz" to="/orders">MY ORDERS</Link>
                    <Link className="logout-button" to="/" onClick={this.props.logout}>LOGOUT</Link>
                </div>

                <div className="greeting-header">
                    <h1 className="greeting">Address Book</h1>
                    <Link className="new-address" to="/addresses/new">Add New Address</Link>
                    {/* dummy value!! need to fix tomorrow 5/18 */}
                    {/* <p className="summary">Welcome to your dashboard, from here you are able to view your address book as well as past orders.</p> */}
                </div>



                {/* BELOW IS ACTUALLY WHAT I NEED TO RENDER ADDRESSES */}
                <div className="address-items">
                    {
                        addresses.map(address => <AddressIndexItem key={address.id} address={address} fetchAddress={fetchAddress} deleteAddress={deleteAddress} />)
                    }
                </div>
            </div>
        )

    }

}

export default AddressIndex;