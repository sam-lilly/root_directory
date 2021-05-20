import { connect } from 'react-redux';
import { fetchCarts, createCart } from '../../actions/cart_actions';
import { fetchCartItems } from '../../actions/cart_items_actions';
import CartIndex from './cart_index'


const mSTP = (state) => {
    // debugger
    return ({
        cart: state.entities.carts,
        // cart: Object.values[state.entities.carts]
        items: Object.values(state.entities.cartItems)
    })
}

const mDTP = (dispatch) => {
    // debugger
    return ({
        fetchCarts: () => dispatch(fetchCarts()),
        createCart: () => dispatch(createCart()),
        fetchCartItems: () => dispatch(fetchCartItems())
        // fetchCart: (cartId) => dispatch(fetchCart(cartId))
    })
}

export default connect (mSTP, mDTP)(CartIndex);