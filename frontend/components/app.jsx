import React from 'react';
import { Route, Switch, Link } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import { AccountRoute } from '../util/account_route_util';

import GreetingContainer from './greeting/greeting_container';
import SplashPage from './splash/splash';

import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';

import AddressIndexContainer from './addresses/address_index_container';
import AddressShowContainer from './addresses/address_show_container';
import EditAddressFormContainer from './addresses/edit_address_form_container';
import CreateAddressFormContainer from './addresses/create_address_form_container';

import PlantIndexContainer from './plants/plant_index_container';
import PlantShowContainer from './plants/plant_show_container';

import PlanterIndexContainer from './planters/planter_index_container';
import PlanterShowContainer from './planters/planter_show_container';
  
import AccountHome from './account/account_home';

import CartShowContainer from './carts/cart_show_container';
import CartIndexContainer from './carts/cart_index_container';


const App = () => (
    <div>
        <header>

            <div className="nav-container">

                <div className="header-left">
                    <Link to="/" className="root-link" ><i className="fas fa-seedling"></i>ROOT::DIRECTORY</Link>
                </div>
                
                <div className="header-middle">
                    <Link to="/plants" className="shop-nyc">SHOP NYC</Link>
                    <Link to="/planters" className="plant-care">PLANTERS</Link>
                    <Link to="/plantcare" className="plant-blog">PLANT CARE</Link>
                </div>

                <div className="header-right">
                    <GreetingContainer />
                </div>
                
            </div>


        </header>
        
        <Switch>


            <AuthRoute exact path="/login" component={LoginFormContainer} />
            <AuthRoute exact path="/signup" component={SignupFormContainer} />

            <Route exact path="/account" component={AccountHome} />

            <AccountRoute exact path="/addresses" component={AddressIndexContainer} />
            <AccountRoute exact path="/addresses/new" component={CreateAddressFormContainer} />
            <AccountRoute exact path="/addresses/:addressId" component={AddressShowContainer} />
            <AccountRoute exact path="/addresses/:addressId/edit" component={EditAddressFormContainer} />

            <Route exact path="/plants" component={PlantIndexContainer} />
            <Route exact path="/plants/:plantId" component={PlantShowContainer} />

            <Route exact path="/planters" component={PlanterIndexContainer} />
            <Route exact path="/planters/:planterId" component={PlanterShowContainer} />

            <Route exact path="/cart" component={CartIndexContainer} />
            
            {/* <Route exact path="/cart/:cartId" component={CartShowContainer} /> */}
            {/* ^ this whole route works but I am not using it */}

            <Route path="/" component={SplashPage} />
            
        </Switch>

        <footer className="footer">
            {/* <p>hiii, im the footer :)</p>
            <p>cool stuff will go here</p> */}
            <div className="lil-icon">
                <i className="fab fa-github"></i>
                {/* <i className="fab fa-linkedin"></i> */}
                <i className="fab fa-linkedin-in"></i>
                <i className="fab fa-angellist"></i>
            </div>
        </footer>

    </div>
)


export default App;