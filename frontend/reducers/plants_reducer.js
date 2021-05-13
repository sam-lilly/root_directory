import { RECEIVE_PLANTS, RECEIVE_PLANT } from '../actions/plant_actions';

const plantsReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let nextState = Object.assign({}, oldState);

    switch (action.type) {
        case RECEIVE_PLANTS:
            return action.plants;
        case RECEIVE_PLANT:
            nextState[action.plant.id] = action.plant;
            return nextState;
        default:
            return oldState;
    }
}

export default plantsReducer;