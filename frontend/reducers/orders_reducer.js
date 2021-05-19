import { RECEIVE_ORDERS, RECEIVE_ORDER } from '../actions/order_actions';

const ordersReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let nextState = Object.assign({}, oldState);

    switch (action.type) {
        case RECEIVE_ORDERS:
            return action.orders;
        case RECEIVE_ORDER:
            nextState[action.order.id] = action.cart;
            return nextState;
        default:
            return oldState;
    }
}

export default ordersReducer;