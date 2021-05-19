import { RECEIVE_CARTS, RECEIVE_CART } from '../actions/address_actions';

const cartsReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let nextState = Object.assign({}, oldState);

    switch (action.type) {
        case RECEIVE_CARTS:
            return action.carts;
        case RECEIVE_CART:
            nextState[action.cart.id] = action.cart;
        default:
            return oldState;
    }
}

export default cartsReducer;