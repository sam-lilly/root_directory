import React from 'react';
import { Route, Switch, Link } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';

import GreetingContainer from './greeting/greeting_container';
import SplashPage from './splash/splash';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import PlantIndexContainer from './plants/plant_index_container';
import PlantShowContainer from './plants/plant_show_container';
import PlanterIndexContainer from './planters/planter_index_container';
import PlanterShowContainer from './planters/planter_show_container';
        
const App = () => (
    <div>
        <header>

            <div className="nav-container">

                <div className="header-left">
                    <Link to="/" className="root-link" >ROOT :: DIRECTORY</Link>
                </div>
                
                <div className="header-middle">
                    <Link to="/plants" className="shop-nyc">SHOP NYC</Link>
                    <Link to="/plantcare" className="plant-care">PLANT CARE</Link>
                    <Link to="/blogs" className="plant-blog">PLANT BLOG</Link>
                </div>

                <div className="header-right">
                    <GreetingContainer />
                </div>
                
            </div>


        </header>
        
        {/* <Switch> */}

            <Route exact path="/" component={SplashPage} />

            <AuthRoute exact path="/login" component={LoginFormContainer} />
            <AuthRoute exact path="/signup" component={SignupFormContainer} />

            <Route exact path="/plants" component={PlantIndexContainer} />
            <Route exact path="/plants/:plantId" component={PlantShowContainer} />

            <Route exact path="/planters" component={PlanterIndexContainer} />
            <Route exact path="/planters/:planterId" component={PlanterShowContainer} />

        {/* </Switch> */}

        <footer className="footer">
            <p>hiii, im the footer :)</p>
            <p>cool stuff will go here</p>
        </footer>

    </div>
)


export default App;