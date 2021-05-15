import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter } from 'react-router-dom';
import App from './app';
import StartAtTop from './start_at_top/start_at_top'

const Root = ({ store }) => (
    <Provider store={store}>
        <HashRouter>
            <StartAtTop>
                <App />
            </StartAtTop>
        </HashRouter>
    </Provider>
);

export default Root;