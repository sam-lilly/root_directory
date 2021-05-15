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

        if (!plants) return null;

        return (
            <div className="plant-index">
                <div className="sections-search">
                    <h1 className="sections-header">sections search!</h1>

                    <div className="dropdown">
                        <p>Light Requirements</p>
                        <p>+</p>
                    </div>

                    <div className="dropdown">
                        <p>Care Difficulty</p>
                        <p>+</p>
                    </div>

                    <div className="dropdown">
                        <p>Size</p>
                        <p>+</p>
                    </div>

                    <div className="dropdown">
                        <p>Benefits</p>
                        <p>+</p>
                    </div>

                    <div className="dropdown">
                        <p>Plant Type</p>
                        <p>+</p>
                    </div>

                    {/* all the p tags with + will be dropdown links */}

                </div>

                    {
                        plants.map(plant => <PlantIndexItem key={plant.id} plant={plant} />)
                    }

            </div>

        )
    }


}

export default PlantIndex;