import React from 'react';

class PlantIndexItem extends React.Component {

    render () {

        const { plant } = this.props;

        return (
            <div>
                <ul>
                    <li>
                        <p>{plant.name}</p>
                        <img src={plant.photoMainUrl} />
                        <img src={plant.photoHoverUrl} />
                    </li>
                </ul>
            </div>

        )

    }
}

export default PlantIndexItem;