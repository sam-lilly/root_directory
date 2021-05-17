import React from 'react';

class AddressShow extends React.Component {

    componentDidMount() {
        this.props.fetchAddress(this.props.match.params.addressId);
    }

    render () {

        let { address } = this.props;
        
        if (!address) return null;

        return (
            <div className="address-show-page">
                <h1>adddddress show page what whatttt</h1>
                <p>{address.firstName}</p>
                <p>{address.lastName}</p>
                <p>{address.company}</p>
                <p>{address.address1}</p>
                <p>{address.address2}</p>
                <p>{address.city}</p>
                <p>{address.state}</p>
                <p>{address.country}</p>
                <p>{address.zipCode}</p>
                <p>{address.phoneNumber}</p>
            </div>
        )
    }

}

export default AddressShow;