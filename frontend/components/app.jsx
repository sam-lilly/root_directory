import React from 'react';
import { Route, Switch } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';

import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import PlantIndexContainer from './plants/plant_index_container';
import PlantShowContainer from './plants/plant_show_container';
import PlanterIndexContainer from './planters/planter_index_container';
import PlanterShowContainer from './planters/planter_show_container';
        
const App = () => (
    <div>
        <header>
            {/* <h1>Root :: Directory</h1> */}
            <GreetingContainer />
            <h1>this appears errrrywhereeee</h1>
        </header>
        
        <Switch>

            <AuthRoute exact path="/login" component={LoginFormContainer} />
            <AuthRoute exact path="/signup" component={SignupFormContainer} />

            <Route exact path="/plants" component={PlantIndexContainer} />
            <Route exact path="/plants/:plantId" component={PlantShowContainer} />

            <Route exact path="/planters" component={PlanterIndexContainer} />
            <Route exact path="/planters/:planterId" component={PlanterShowContainer} />

        </Switch>

    </div>
)


export default App;