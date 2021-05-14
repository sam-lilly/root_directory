import { connect } from 'react-redux';
import { fetchPlant } from '../../actions/plant_actions';
import PlantShow from './plant_show';

const mSTP = (state, ownProps) => ({
    plant: state.entities.plants[ownProps.match.params.plantId]
})

const mDTP = (dispatch) => ({
    fetchPlant: (plantId) => dispatch(fetchPlant(plantId)) 
})

export default connect (mSTP, mDTP)(PlantShow);