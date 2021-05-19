import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import plantsReducer from './plants_reducer';
import plantersReducer from './planters_reducer';
import addressesReducer from './addresses_reducer';
import cartsReducer from './carts_reducer';
import cartItemsReducer from './cart_items_reducer';
import ordersReducer from './orders_reducer';

const entitiesReducer = combineReducers({
    users: usersReducer,
    plants: plantsReducer,
    planters: plantersReducer,
    addresses: addressesReducer,
    carts: cartsReducer,
    cartItems: cartItemsReducer,
    orders: ordersReducer
});

export default entitiesReducer;
