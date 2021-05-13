import React from 'react';

class PlantIndexItem extends React.Component {

    render () {

        const { plant } = this.props;

        return (
            <div>
                <ul>
                    <li>
                        <p>{plant.name} (if you can see this plant name, then it is working)</p>
                    </li>
                </ul>
            </div>

        )

    }
}

export default PlantIndexItem;