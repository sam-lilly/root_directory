import React from 'react';

class PlanterIndexItem extends React.Component {

    render () {

        const { planter } = this.props;

        return (
            <div>
                <ul>
                    <li>
                        <p>{planter.name} (if you can see this pot name, then it is working)</p>
                    </li>
                </ul>
            </div>
        )

    }
}

export default PlanterIndexItem;