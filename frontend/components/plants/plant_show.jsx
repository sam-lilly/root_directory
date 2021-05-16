import React from 'react';
import { Link } from 'react-router-dom';

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

                <div className="local-delivery">
                    <i className="fas fa-building" id="building">&nbsp;&nbsp;</i>
                    <p>NYC Area Local Delivery Only</p>
                    {/* <i class="fas fa-truck"></i> */}
                    {/* truck delivery car */}
                    {/* <i class="far fa-building"></i> */}
                    {/* ^above building more white than black */}
                </div>

                <div className="top-title-container">
                    <div className="top-left-side">

                        <div className="nav-links">
                            <Link to="/" className="links">HOME</Link>
                            <p className="carrot">&nbsp;>&nbsp;</p>
                            <Link to="/plants" className="links">ALL PLANTS</Link>
                            <p className="carrot">&nbsp;>&nbsp;</p>
                            <p>{plant.inches.toString()}" {plant.name} | INDOOR PLANT </p>
                        </div>

                        <p className="title">{plant.name} | {plant.inches.toString()}"</p>
                
                        <div className="pot-images">
                            <i class="fas fa-seedling"></i>
                            <i class="fas fa-seedling"></i>
                            <i class="fas fa-seedling"></i>
                            <i class="fas fa-seedling"></i>
                            <i class="fas fa-seedling"></i>
                            <i class="fas fa-seedling"></i>

                                {/* each color pot and nursery pot = 6 images */}
                        </div>

                    </div>

                    <div className="top-right-side">

                        <p className="price">${plant.price.toString()}</p>
                        <Link to="/planters" className="link-planters">ADD A PLANTER</Link>
                        <button className="add-to-cart"><i className="fas fa-shopping-cart"></i>&nbsp;add to cart</button>

                        {/* flex box w two parent containers
                        left side name/images/info on pot */}
                        {/* may have to do a pot association.. will think on that */}

                </div>
            
            </div>



                {/* <h1>this is plant show page, hello world!</h1>
                <p>{plant.name}</p>
                <img src={plant.photoMainUrl} />
                <img src={plant.photoHoverUrl} /> */}



            </div>
        )
    }


}

export default PlantShow;