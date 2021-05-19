import { connect } from 'react-redux';
import { createCart } from '../../actions/cart_actions';
import CreateCart from './create_cart';

const mSTP = (state) => ({
    formType: "Create Cart"
})

const mDTP = (dispatch) => ({
    createCart: () => dispatch(createCart())
})

export default connect (mSTP, mDTP)(CreateCart);