import  { connect } from 'react-redux';
import { fetchAddresses, fetchAddress, deleteAddress } from '../../actions/address_actions';
import AddressIndex from './address_index';


const mSTP = (state) => ({
    addresses: Object.values(state.entities.addresses)
})

const mDTP = (dispatch) => ({
    fetchAddresses: () => dispatch(fetchAddresses()),
    fetchAddress: (address) => dispatch(fetchAddress(address)),
    deleteAddress: (addressId) => dispatch(deleteAddress(addressId))
})

export default connect (mSTP, mDTP)(AddressIndex);