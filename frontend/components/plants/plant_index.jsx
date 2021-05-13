import React from 'react';
import PlantIndexItem from './plant_index_item';


class PlantIndex extends React.Component {
    
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchPlants();
    }

    render() {
        
        let { plants } = this.props;

        if (!plants) {
            return null
        };

        return (
            <div>
                <h1>this is plant index!</h1>

                <ul>
                    {
                        plants.map(plant => <PlantIndexItem plant={plant} key={plant.id} />)
                    }
                </ul>

            </div>

        )
    }


}

export default PlantIndex;