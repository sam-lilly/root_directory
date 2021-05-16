import React from 'react';
import { Link } from 'react-router-dom';

class SplashPage extends React.Component {

    render () {
        return (
            <div className="splash-page">
                
                {/* <div className="img-wrapper"> */}
                    <img src={window.splash} alt="plants" className="splash-background" />
                    {/* <img src={window.altSplash} alt="plants" className="splash-background" /> */}
                {/* </div> */}


                <h1 className="header">the future of plants</h1>
                <p className="info">Blending the science of horticulture with the art of design</p>

                <div className="image-grid">

                    <img src={window.petPlaceholder} alt="pets" className="placeholder" />

                    {/* this will be a grid made up of 2 itmes // need to create image // plants and then planters */}
                </div>


                <div className="delivery-container">
                    <Link to="/plants" className="delivery-bar">
                        <p className="truck"><i className="fas fa-truck"></i></p>
                        <p className="delivery">&nbsp;NYC Area Day Delivery&nbsp;</p>
                        <p>On All Potted Plants</p>
                    </Link>
                </div>

                <div>
                    {/* <img src={window.plantShelf} alt="plant-shelf" className="plant-shelf" /> */}
                    <img src={window.splashPots} alt="plant-shelf" className="plant-shelf" />
                </div>

            
            </div>
        )
    }

}

export default SplashPage;