import { RECEIVE_CARTS, RECEIVE_CART } from '../actions/cart_actions';

const cartsReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let nextState = Object.assign({}, oldState);

    switch (action.type) {
        case RECEIVE_CARTS:
            // debugger
            return action.carts;
        case RECEIVE_CART:
            // debugger
            // nextState[action.cart.id] = action.cart;
            // return nextState;
            // ^only using this for one
            return action.cart;
        default:
            return oldState;
    }
}

export default cartsReducer;