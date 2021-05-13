import * as PlantApiUtil from '../util/plant_api_util';

export const RECEIVE_PLANTS = "RECEIVE_PLANTS";
export const RECEIVE_PLANT = "RECEIVE_PLANT";

const receivePlants = (plants) => ({
    type: RECEIVE_PLANTS,
    plants
});

const receivePlant = (plant) => ({
    type: RECEIVE_PLANT,
    plant
});

export const fetchPlants = () => (dispatch) => (
    PlantApiUtil.fetchPlants()
        .then(plants => dispatch(receivePlants(plants)))
)

export const fetchPlant = (plantId) => (dispatch) => (
    PlantApiUtil.fetchPlant(plantId)
        .then(plant => dispatch(receivePlant(plant)))
)