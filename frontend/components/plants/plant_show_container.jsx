import { connect } from 'react-redux';
import { fetchPlant } from '../../actions/plant_actions';
import { createCartItem, fetchCartItems } from '../../actions/cart_items_actions';
import { fetchCarts } from '../../actions/cart_actions';
import PlantShow from './plant_show';

const mSTP = (state, ownProps) => {
    return ({
        plant: state.entities.plants[ownProps.match.params.plantId]
    })
}

const mDTP = (dispatch) => {
    debugger
    return ({
    fetchPlant: (plantId) => dispatch(fetchPlant(plantId)), 
    addItemToCart: (cartItem) => dispatch(createCartItem(cartItem)),
    fetchCartItems: () => dispatch(fetchCartItems()),
    fetchCarts: () => dispatch(fetchCarts())
    })
}

export default connect (mSTP, mDTP)(PlantShow);