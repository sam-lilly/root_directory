import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import { signup, login, logout } from './actions/session_actions'
import { fetchPlants, fetchPlant } from './actions/plant_actions';
import { fetchPlanters, fetchPlanter } from './actions/planter_actions';
import { fetchAddresses, fetchAddress, createAddress, updateAddress, deleteAddress } from './actions/address_actions';


document.addEventListener("DOMContentLoaded", () => {

    let store;
    if (window.currentUser) {
        const preloadedState = {
            entities: {
                users: { [window.currentUser.id]: window.currentUser}
            },
            session: { id: currentUser.id }
        };
        store = configureStore(preloadedState);
        delete window.currentUser;
    } else {
        store = configureStore();
    }


    const root = document.getElementById("root");

    window.getState = store.getState;
    window.dispatch = store.dispatch;

    window.fetchPlant = fetchPlant;
    window.fetchPlants = fetchPlants;
    window.fetchPlanter = fetchPlanter;
    window.fetchPlanters = fetchPlanters;

    window.fetchAddresses = fetchAddresses;
    window.fetchAddress = fetchAddress;
    window.createAddress = createAddress;
    window.udpateAddress = updateAddress;
    window.deleteAddress = deleteAddress;
    

    // window.signup = signup;
    // window.login = login;
    // window.logout = logout;

    ReactDOM.render(<Root store={store} />, root)

});