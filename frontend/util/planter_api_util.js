export const fetchPlanters = () => (
    $.ajax({
        method: "GET",
        url: `/api/planters`
    })
);

export const fetchPlanter = (planterId) => (
    $.ajax({
        method: "GET",
        url: `/api/planters/${planterId}`
    })
);