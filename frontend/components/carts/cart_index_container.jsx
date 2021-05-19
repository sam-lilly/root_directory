import { connect } from 'react-redux';
import { fetchCarts, createCart } from '../../actions/cart_actions';
import CartIndex from './cart_index'


const mSTP = (state) => {
    // debugger
    return ({
        cart: state.entities.carts
        // cart: Object.values[state.entities.carts]
    })
}

const mDTP = (dispatch) => {
    // debugger
    return ({
        fetchCarts: () => dispatch(fetchCarts()),
        createCart: () => dispatch(createCart())
        // fetchCart: (cartId) => dispatch(fetchCart(cartId))
    })
}

export default connect (mSTP, mDTP)(CartIndex);