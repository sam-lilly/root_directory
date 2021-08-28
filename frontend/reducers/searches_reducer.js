import { RECEIVE_SEARCH, CLEAR_SEARCH } from '../actions/search_actions';

const searchesReducer = ( oldState = [], action ) => {
    Object.freeze(oldState);

    switch (action.type) {
        case RECEIVE_SEARCH:
            return action.searchResult;
        case CLEAR_SEARCH:
            return [];
        default:
            return oldState;
    }
};

export default searchesReducer;