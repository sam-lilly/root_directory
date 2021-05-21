import { connect } from 'react-redux';
import { fetchCart } from '../../actions/cart_actions';
import CartShow from './cart_show'


const mSTP = (state, ownProps) => {
    return ({
        cart: state.entities.carts[ownProps.match.params.cartId]
    })
}

const mDTP = (dispatch) => {

    return ({
        fetchCart: (cartId) => dispatch(fetchCart(cartId))
    })
}

export default connect (mSTP, mDTP)(CartShow);