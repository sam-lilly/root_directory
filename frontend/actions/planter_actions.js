import * as PlanterApiUtil from '../util/planter_api_util';

export const RECEIVE_PLANTERS = "RECEIVE_PLANTERS";
export const RECEIVE_PLANTER = "RECEIVE_PLANTER";

const receivePlanters = (planters) => ({
    type: RECEIVE_PLANTERS,
    planters
});

const receivePlanter = (planter) => ({
    type: RECEIVE_PLANTER,
    planter
});

export const fetchPlanters = () => (dispatch) => (
    PlanterApiUtil.fetchPlanters()
        .then(planters => dispatch(receivePlanters(planters)))
)

export const fetchPlanter = (planterId) => (dispatch) => (
    PlanterApiUtil.fetchPlanter(planterId)
        .then(planter => dispatch(receivePlanter(planter)))
)