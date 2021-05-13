import { connect } from 'react-redux';
import { fetchPlanter } from '../../actions/planter_actions';
import PlanterShow from './planter_show';

const mSTP = (state, ownProps) => ({
    planter: state.entities.planters[ownProps.match.params.planterId]
})

const mDTP = (dispatch) => ({
    fetchPlanter: (planter) => dispatch(fetchPlanter(planter)) 
})

export default connect (mSTP, mDTP)(PlanterShow);