import { connect } from 'react-redux';
import { createCartItem } from '../../actions/cart_items_actions'
import CartItemForm from './cart_item_form';

const mSTP = (state) => ({
    cartItem: "",
    // ^not sure what to put here? empty?
    formType: "Create Cart Item/ add item to cart"
})

const mDTP = (dispatch) => ({
    addOrEditItem: (cartItem) => dispatch(createCartItem(cartItem))
})


export default connect (mSTP, mDTP)(CartItemForm);