import React from 'react';
import AddressIndexItem from './address_index_item';

class AddressIndex extends React.Component {

    // constructor(props) {
    //     super(props);
    //     // if (this.props.addresses) {
    //     //     this.state = this.props.addresses
    //     // } else {
    //     //     this.state = null;
    //     // }
    //     debugger
    //     // this.state = this.props.addresses
    // }

    componentDidMount() {
        this.props.fetchAddresses()
    }

    // componentWillUnmount() {
    //     this.props.fetchAddresses()
    // }

    render () {

        let { addresses, deleteAddress, fetchAddress } = this.props;
        
        if (!addresses) return null;

        return (
            <div>
                <h1>welcommmee,, i am address index!</h1>
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