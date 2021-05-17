import React from 'react';
import { Link } from 'react-router-dom';

class PlanterShow extends React.Component {

    constructor(props) {
        // debugger
        super(props);
        this.state = {
            displayMain: true
        };
    }

    componentDidMount() {
        // debugger
        this.props.fetchPlanter(this.props.match.params.planterId);
    }

    render () {

        let { planter } = this.props;

        if (!planter) return null;

        let imgDisplay;

        if (this.state.displayMain) {
            imgDisplay = planter.photoMainUrl;
        } else {
            imgDisplay = planter.photoHoverUrl;
        }

        return (
            <div className="planter-show">

            <div className="local-delivery">
                <i className="fas fa-building" id="building">&nbsp;&nbsp;</i>
                <p>NYC Area Local Delivery Only</p>
                {/* <i className="fas fa-truck"></i> */}
                {/* truck delivery car */}
                {/* <i className="far fa-building"></i> */}
                {/* ^above building more white than black */}
            </div>

            <div className="top-title-container">
                <div className="top-left-side">

                    <div className="nav-links">
                        <Link to="/" className="links">HOME</Link>
                        <p className="carrot">&nbsp;<i className="fas fa-chevron-right"></i>&nbsp;</p>
                        <Link to="/planters" className="links">ALL PLANTERS</Link>
                        <p className="carrot">&nbsp;<i className="fas fa-chevron-right"></i>&nbsp;</p>
                        <p>{planter.inches.toString()}" {planter.name} | INDOOR POT </p>
                    </div>

                    <p className="title">{planter.name} | {planter.inches.toString()}"</p>

                    <div className="pot-images">
                        <i className="fas fa-seedling"></i>
                        <i className="fas fa-seedling"></i>
                        <i className="fas fa-seedling"></i>
                        <i className="fas fa-seedling"></i>
                        <i className="fas fa-seedling"></i>
                        <i className="fas fa-seedling"></i>

                            {/* each color pot and nursery pot = 6 images */}
                    </div>

                </div>

                <div className="top-right-side">

                    <p className="price">${planter.price.toString()}</p>
                    <Link to="/plants" className="link-planters">ADD A PLANT</Link>
                    <button className="add-to-cart"><i className="fas fa-shopping-cart"></i>&nbsp;&nbsp;add to cart</button>

                    {/* flex box w two parent containers
                    left side name/images/info on pot */}
                    {/* may have to do a pot association.. will think on that */}

                </div>

            </div>

            <div className="plant-display-container">

                {/* <div className="click-images"> 
                    <img src={plant.photoHoverUrl} onClick={}/>
                    <img className="bottom-pic" src={plant.photoMainUrl} />
                </div>
                <div className="display-image">
                    <img className="main-image" src={plant.photoMainUrl} />
                </div> */}
                {/* ^^click images & display image prior to the toggle */}


                <div className="click-images"> 
                    <img className="top-pic"
                        src={planter.photoHoverUrl}
                        onClick={() => this.setState({displayMain: false})}/>
                    <img className="bottom-pic"
                        src={planter.photoMainUrl}
                        onClick={() => this.setState({displayMain: true})}/>
                </div>
                <div className="display-image">
                    <img className="main-image" src={imgDisplay} />
                </div>
                



                <div className="plant-info">
                    <div className="category-container">
                        <p>OVERVIEW</p>
                        <p>CARE</p>
                        <p>NYC DELIVERY</p>
                    </div>
                    <p className="plant-details">{planter.overview}</p>
                </div>

            </div>

            {/* <p>{plant.name}</p>
            <img src={plant.photoMainUrl} />
            <img src={plant.photoHoverUrl} /> */}



            </div>
        )

    }


}

export default PlanterShow;