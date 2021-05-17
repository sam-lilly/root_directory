import { connect } from 'react-redux';
import { fetchPlanter } from '../../actions/planter_actions';
import PlanterShow from './planter_show';

const mSTP = (state, ownProps) => {
    // debugger
    return ({
        planter: state.entities.planters[ownProps.match.params.planterId]
    })
}

const mDTP = (dispatch) => ({
    fetchPlanter: (planterId) => dispatch(fetchPlanter(planterId)) 
})

export default connect (mSTP, mDTP)(PlanterShow);