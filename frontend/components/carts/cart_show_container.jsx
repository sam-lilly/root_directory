import { connect } from 'react-redux';
import { fetchCart } from '../../actions/cart_actions';
import CartShow from './cart_show'

const mSTP = (state, ownProps) => ({
    cart:  state.entities.carts[ownProps.match.params.cartId]
})

const mDTP = (dispatch) => ({
    fetchCart: (cart) => dispatch(fetchCart(cart))
})

export default connect (mSTP, mDTP)(CartShow);