import React from 'react';

class PlantShow extends React.Component {

    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchPlant(this.props.match.params.plantId);
    }

    render () {

        let { plant } = this.props;
        
        if (!plant) return null;

        return (
            <div className="plant-show">
                <h1>this is plant show page, hello world!</h1>
                <p>{plant.name}</p>
            </div>
        )
    }


}

export default PlantShow;