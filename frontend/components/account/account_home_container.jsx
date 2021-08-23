import { connect } from 'react-redux';
import { fetchAddresses } from '../../actions/address_actions';
import { logout } from '../../actions/session_actions';
import AccountHome from './account_home';

const mSTP = ({ session, entities: { users } }) => {
    // debugger
    return ({
        currentUser : users[session.id],
        address : users[session.id].address
    })
}

const mDTP = (dispatch) => ({
    logout: () => dispatch(logout()),
    fetchAddresses: () => dispatch(fetchAddresses())
});

export default connect (mSTP, mDTP)(AccountHome);

// this could maybe be some way to get user name to account home
// ^^look into this!

// ^all of the above was commented out when "finished"
// need to route addresses to account_home