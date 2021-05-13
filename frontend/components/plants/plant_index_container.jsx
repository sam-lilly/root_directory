import { connect } from 'react-redux';
import { fetchPlants } from '../../actions/plant_actions';
import PlantIndex from './plant_index';

const mSTP = (state) => ({
    plants: Object.values(state.entities.plants)
})


const mDTP = (dispatch) => ({
    fetchPlants: () => dispatch(fetchPlants())
})

export default connect (mSTP, mDTP)(PlantIndex);