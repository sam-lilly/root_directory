import { RECEIVE_ADDRESSES, RECEIVE_ADDRESS, REMOVE_ADDRESS } from '../actions/address_actions';

const addressesReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let nextState = Object.assign({}, oldState);

    switch (action.type) {
        case RECEIVE_ADDRESSES:
            return action.addresses;
        case RECEIVE_ADDRESS:
            nextState[action.address.id] = action.address;
            return nextState;
        case REMOVE_ADDRESS:
            delete nextState[action.addressId];
                return nextState;
        default:
            return oldState;
    }
}

export default addressesReducer;