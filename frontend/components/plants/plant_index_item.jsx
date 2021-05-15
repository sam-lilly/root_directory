import React from 'react';

class PlantIndexItem extends React.Component {

    

    // hoverPhoto() {
    //     if 
    // }



    render () {

        const { plant } = this.props;
        
        // let photoStatus = plant.photoMainUrl

        return (
            <div>
                <ul>
                    <li>
                        {/* < div className="hover-container" onMouseEnter={}> */}
                            <img src={plant.photoMainUrl} className="main-images"/>
                        {/* </div> */}
                            <p className="plant-name">{plant.name} | {plant.inches.toString()}"</p>
                            <p className="plant-price">${plant.price} and up</p>
                            <p>where am i</p>


                        {/* make p container with name and then | then inches */}

                        {/* <img src={plant.photoHoverUrl} /> */}
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
