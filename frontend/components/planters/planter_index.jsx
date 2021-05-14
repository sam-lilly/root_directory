import React from 'react';
import PlanterIndexItem from './planter_index_item';


class PlanterIndex extends React.Component {
    
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchPlanters();
    }

    render() {

        let { planters } = this.props;

        if (!planters) return null;

        return (
            <div>
                <h1>this is planter index!</h1>

                <ul>
                    {
                        planters.map(planter => <PlanterIndexItem key={planter.id} planter={planter} />)
                    }
                </ul>
            </div>
            
        )
    }


}

export default PlanterIndex;