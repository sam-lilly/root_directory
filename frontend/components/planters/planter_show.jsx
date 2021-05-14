import React from 'react';

class PlanterShow extends React.Component {

    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchPlanter(this.props.match.params.planterId);
    }

    render () {

        let { planter } = this.props;

        return (
            <div>
                <h1>this is planter show page!</h1>
                <p>{planter.name}</p>
            </div>
        )
    }


}

export default PlanterShow;