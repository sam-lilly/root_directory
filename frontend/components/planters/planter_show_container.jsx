import { connect } from 'react-redux';
import { fetchPlanter } from '../../actions/planter_actions';
import { createCartItem, fetchCartItems } from '../../actions/cart_items_actions';
import { fetchCarts } from '../../actions/cart_actions';
import PlanterShow from './planter_show';

const mSTP = (state, ownProps) => {
    return ({
        planter: state.entities.planters[ownProps.match.params.planterId]
    })
}

const mDTP = (dispatch) => ({
    fetchPlanter: (planterId) => dispatch(fetchPlanter(planterId)), 
    addItemToCart: (cartItem) => dispatch(createCartItem(cartItem)),
    fetchCartItems: () => dispatch(fetchCartItems()),
    fetchCarts: () => dispatch(fetchCarts())

})

export default connect (mSTP, mDTP)(PlanterShow);