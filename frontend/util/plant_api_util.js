export const fetchPlants = () => (
    $.ajax({
        method: "GET",
        url: `/api/plants`
    })
);

export const fetchPlant = (plantId) => (
    $.ajax({
        method: "GET",
        url: `/api/plants/${plantId}`
    })
)