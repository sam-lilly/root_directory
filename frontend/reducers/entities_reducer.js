import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import plantsReducer from './plants_reducer';
import plantersReducer from './planters_reducer';
import addressesReducer from './addresses_reducer';

const entitiesReducer = combineReducers({
    users: usersReducer,
    plants: plantsReducer,
    planters: plantersReducer,
    addresses: addressesReducer
});

export default entitiesReducer;
