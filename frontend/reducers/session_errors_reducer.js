import { RECEIVE_CURRENT_USER, RECEIVE_SESSION_ERRORS } from '../actions/session_actions';

const sessionErrorsReducer = ( oldState = [], action ) => {
    Object.freeze(oldState);

    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            // debugger
            return [];
        case RECEIVE_SESSION_ERRORS:
            // debugger
            return action.errors;
        default:
            return oldState;
    }
};

export default sessionErrorsReducer;