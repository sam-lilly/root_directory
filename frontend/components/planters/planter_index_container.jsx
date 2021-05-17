import { connect } from 'react-redux';
import { fetchPlanters } from '../../actions/planter_actions';
import PlanterIndex from './planter_index';

const mSTP = (state) => {
    // debugger
    return ({
        planters: Object.values(state.entities.planters)
    })
}

const mDTP = (dispatch) => ({
    fetchPlanters: () => dispatch(fetchPlanters())
})

export default connect (mSTP, mDTP)(PlanterIndex);