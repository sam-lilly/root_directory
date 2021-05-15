import React from 'react';

class PlantIndexItem extends React.Component {

    render () {

        const { plant } = this.props;
        
        
        // let photoStatus = plant.photoMainUrl

        return (
            <div>
                <ul>
                    <li className="product-container">
                            <img
                                src={plant.photoMainUrl}
                                className="main-images"
                                onMouseEnter={e => (e.currentTarget.src = plant.photoHoverUrl)}
                                onMouseLeave={e => (e.currentTarget.src = plant.photoMainUrl)}    
                            />
                            <p className="plant-name">{plant.name} | {plant.inches.toString()}"</p>
                            <p className="plant-price">${plant.price} and up</p>

                            {/* when implementing the pots changing pic at the bottom
                                will put the image then onMouseEnter change the above pic
                                but don't do the onMouseLeave as it will stay the same if
                                they navigate away until they hover again then will
                                essentially 'refresh' the pics with the onMouseLeave */}

                    </li>
                </ul>

            </div>

        )

    }
}

export default PlantIndexItem;


{/* < div className="hover-container" onMouseEnter={}>
<img src={plant.photoMainUrl} className="main-images"/>
</div>
<p className="plant-name">{plant.name} | {plant.inches.toString()}"</p>
<p className="plant-price">${plant.price} and up</p>
<p>where am i</p> */}
