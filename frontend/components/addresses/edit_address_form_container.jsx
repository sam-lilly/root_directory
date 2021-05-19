import React from 'react';
import { connect } from 'react-redux';
import { fetchAddress, updateAddress } from '../../actions/address_actions';
import AddressForm from './address_form';

class EditAddressForm extends React.Component {

    componentDidMount() {
        this.props.fetchAddress(this.props.match.params.addressId);
    }

    render () {

        const { address, formType, submitAddress } = this.props;

        if (!address) return null;

        return (
            <AddressForm    
                address={address}
                formType={formType}
                submitAddress={submitAddress} />
        );
    }

}


const mSTP = (state, ownProps) => ({
    address: state.entities.addresses[ownProps.match.params.addressId],
    formType: "Update Address"
})

const mDTP = (dispatch) => ({
    fetchAddress: (addressId) => dispatch(fetchAddress(addressId)),
    submitAddress: (address) => dispatch(updateAddress(address))
})

export default connect (mSTP, mDTP)(EditAddressForm);