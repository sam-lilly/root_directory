import { connect } from 'react-redux';
import { fetchAddress } from '../../actions/address_actions';
import AddressShow from './address_show';

const mSTP = (state, ownProps) => ({
    address: state.entities.addresses[ownProps.match.params.addressId]
})

const mDTP = (dispatch) => ({
    fetchAddress: (address) => dispatch(fetchAddress(address))
})

export default connect (mSTP, mDTP)(AddressShow);