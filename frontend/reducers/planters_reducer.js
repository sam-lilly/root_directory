import { RECEIVE_PLANTERS, RECEIVE_PLANTER } from '../actions/planter_actions';

const plantersReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let nextState = Object.assign({}, oldState);

    switch (action.type) {
        case RECEIVE_PLANTERS:
            return action.planters;
        case RECEIVE_PLANTER:
            nextState[action.planter.id] = action.planter;
            return nextState;
        default:
            return oldState;
    }
}

export default plantersReducer;