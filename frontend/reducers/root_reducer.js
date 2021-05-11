import { combineReducers } from 'redux';

import entitiesReducer from './entities_reducer';
import sessionReducer from './session_reducer';
import errorsReducer from './errors_reducer';
// import ui from './ui_reducer';


const rootReducer = combineReducers({
    entities: entitiesReducer,
    // ui,
    session: sessionReducer,
    errors: errorsReducer
})

export default rootReducer;
