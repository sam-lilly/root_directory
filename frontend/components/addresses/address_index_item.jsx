import React from 'react';
import { Link } from 'react-router-dom';

class AddressIndexItem extends React.Component {

    constructor(props) {
        super(props);
    }

    render () {

        let { address, deleteAddress } = this.props;
        
        if (!address) return null;


        return (
            <div className="address-index-boxes">
                <ul className="address-info-container">
                    <li className="address-items">
                        <h5 className="address-title">{address.address1}, {address.address2}</h5>
                        <p>{address.first} {address.last}</p>
                        <p>{address.company}</p>
                        <p>{address.city}, {address.state}</p>
                        <p>{address.country}, {address.zip}</p>
                        <p>{address.phone}</p>
                        {/* <Link to ={`/addresses/${address.id}/edit`}>Edit Address</Link> */}
                        {/* <button onClick={() => deleteAddress(address.id)}>remove address</button> */}
                        {/* <button onClick={this.handleDelete}>remove address</button> */}
                    </li>
                </ul>
                <div className="edit-and-delete-container">
                    <i className="fas fa-pencil-alt"></i>
                    <Link className="edit-address" to={`/addresses/${address.id}/edit`}>Edit</Link>
                    <i className="fas fa-times"></i>
                    <button className="delete-address" onClick={() => deleteAddress(address.id)}>Delete</button>
                </div>

                {/* <Link to="/addresses/new">Add New Address</Link> */}
            </div>
        )

    }

}

export default AddressIndexItem;