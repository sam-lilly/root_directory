import { connect } from 'react-redux';
import { fetchSearch, clearSearch } from '../../actions/search_actions';
import SearchIndex from './search_index';

const mSTP = (state) => {
    return ({
        // IDK WHAT THIS WILL BE
        // state
    })
}

const mDTP = (dispatch) => {
    return ({
        fetchSearch: (query) => dispatch(fetchSearch(query)),
        clearSearch: () => dispatch(clearSearch())
    })
}

export default connect (mSTP, mDTP)(SearchIndex);