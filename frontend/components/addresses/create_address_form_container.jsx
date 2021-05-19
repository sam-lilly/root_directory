import { connect } from 'react-redux';
import { createAddress } from '../../actions/address_actions';
import AddressForm from './address_form';


const mSTP = (state) => ({
    address: {
        first: "",
        last: "",
        company: "",
        address1: "",
        address2: "",
        city: "",
        state: "",
        country: "",
        zip: "",
        phone: "",
    },
    formType: "Create Address"
})

const mDTP = (dispatch) => ({
    submitAddress: (address) => dispatch(createAddress(address))
})



export default connect (mSTP, mDTP)(AddressForm);