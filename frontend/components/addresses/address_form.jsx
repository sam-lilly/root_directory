import React from 'react';
import { Link } from 'react-router-dom';

class AddressForm extends React.Component {

    constructor(props) {
        super(props);
        this.state = this.props.address;
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return e => {
            this.setState({ [field]: e.currentTarget.value })
        }
    }

    handleSubmit() {
        // e.preventDefault();
        this.props.submitAddress(this.state)
    }

    render () {

        let { address, formType, fetchAddress, submitAddress } = this.props;
        
        if (!address) return null;

        return (

            <div className="address-form-edit-update">

                <div className="index-container">
                    <h1 className="index">Index</h1>
                    <Link className="linkz" to="/account">MY ACCOUNT</Link>
                    <Link className="linkz" to="/addresses">ADDRESS BOOK</Link>
                    <Link className="linkz" to="/cart">MY ORDERS</Link>
                    <Link className="logout-button" to="/" onClick={this.props.logout}>LOGOUT</Link>
                </div>

                <div className="greeting-header">
                    <h1 className="greeting">Address Book</h1>
                    <Link className="new-address" to="/addresses/new">Add New Address</Link>
                    {/* dummy value!! need to fix tomorrow 5/18 */}
                    {/* <p className="summary">Welcome to your dashboard, from here you are able to view your address book as well as past orders.</p> */}
                </div>  
                




                <form className="address-form-container" onSubmit={this.handleSubmit}>

                    {/* <h1>{this.props.formType}</h1> */}
                    {/* <h1>{formType}</h1> */}

                    {/* <label>First Name */}
                        <input
                            type="text"
                            value={this.state.first}
                            placeholder="First Name"
                            onChange={this.update("first")}
                        />
                    {/* </label> */}

                    {/* <label>Last Name */}
                        <input
                            type="text"
                            value={this.state.last}
                            placeholder="Last Name"
                            onChange={this.update("last")}
                        />
                    {/* </label> */}

                    {/* <label>Company */}
                        <input
                            type="text"
                            value={this.state.company}
                            placeholder="Company"
                            onChange={this.update("company")}
                        />
                    {/* </label> */}

                    {/* <label>Address 1 */}
                        <input
                            type="text"
                            value={this.state.address1}
                            placeholder="Address 1"
                            onChange={this.update("address1")}
                        />
                    {/* </label> */}

                    {/* <label>Address2 */}
                        <input
                            type="text"
                            value={this.state.address2}
                            placeholder="Address 2"
                            onChange={this.update("address2")}
                        />
                    {/* </label> */}

                    {/* <label>City */}
                        <input
                            type="text"
                            value={this.state.city}
                            placeholder="City"
                            onChange={this.update("city")}
                        />
                    {/* </label> */}

                    {/* <label>State (enter abbreviation) */}
                        <input
                            type="text"
                            value={this.state.state}
                            placeholder="State"
                            onChange={this.update("state")}
                        />
                    {/* </label> */}

                    {/* <label>Country */}
                        <input
                            type="text"
                            value={this.state.country}
                            placeholder="Country"
                            onChange={this.update("country")}
                        />
                    {/* </label> */}

                    {/* <label>Zip Code */}
                        <input
                            type="text"
                            value={this.state.zip}
                            placeholder="Zip Code"
                            onChange={this.update("zip")}
                        />
                    {/* </label> */}

                    {/* <label>Phone Number */}
                        <input
                            type="text"
                            value={this.state.phone}
                            placeholder="Phone Number"
                            onChange={this.update("phone")}
                        />
                    {/* </label> */}
                    <Link className="update-address-button" to="/addresses" onClick={this.handleSubmit}>{formType}</Link>
                    {/* <button type="submit" value={formType}>{formType}</button> */}

                    <Link className="view-addresses-button" to="/addresses">View All Addresses</Link>

                </form>


            </div>

        )
    }


}

export default AddressForm;