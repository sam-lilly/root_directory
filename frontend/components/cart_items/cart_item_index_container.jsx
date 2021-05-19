import { connect } from 'react-redux';
import { fetchCartItems, deleteCartItem } from '../../actions/cart_items_actions';
import CartItemIndex from './cart_item_index';


const mSTP = (state) => ({
    cartItems: Object.values(state.entities.cartItems)
})

const mDTP = (dispatch) => ({
    fetchCartItems: () => dispatch(fetchCartItems()),
    deleteCartItem: (cartItemId) => dispatch(deleteCartItem(cartItemId))
})

export default connect (mSTP, mDTP)(CartItemIndex)