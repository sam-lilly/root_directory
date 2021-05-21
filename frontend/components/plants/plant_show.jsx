import React from 'react';
import { Link } from 'react-router-dom';
import AddPlantModal from '../modals/add_plant';

class PlantShow extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            displayMain: true,
            openModal: true
        };
        this.addItemToCart = this.addItemToCart.bind(this);
        this.openModal = this.openModal.bind(this);
    }

    componentDidMount() {
        this.props.fetchPlant(this.props.match.params.plantId);
        this.props.fetchCarts();
        this.props.fetchCartItems();
    }

    addItemToCart() {
        this.props.addItemToCart({cart_id: this.props.plant.currentcart, product_id: this.props.plant.productId, quantity: 1});
        // will keep quantity at 1 for now because there is no button on this one
        // this.props.fetchCartItems();
        this.openModal()

    }

    // openModal = (e) => {
    //     e.preventDefault();
    //     this.setState({ openModal: !this.state.openModal });
    // }

    openModal() {
        // e.preventDefault();
        this.setState({ openModal: !this.state.openModal });
    }

    // componentDidUpdate(prevProps) {
    //     if (prevProps.cart.id !== this.props.cart.id) {
    //         // this.props.fetchCartItems();
    //         // this.props.fetchCarts();
    //     }
    // }


    render () {

        let { plant } = this.props;
        
        if (!plant) return null;

        let imgDisplay;

        if (this.state.displayMain) {
            imgDisplay = plant.photoMainUrl;
        } else {
            imgDisplay = plant.photoHoverUrl;
        }


        return (
            <div className="plant-show">

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
                            <Link to="/plants" className="links">ALL PLANTS</Link>
                            <p className="carrot">&nbsp;<i className="fas fa-chevron-right"></i>&nbsp;</p>
                            <p>{plant.inches.toString()}" {plant.name} | INDOOR PLANT </p>
                        </div>

                        <p className="title">{plant.name} | {plant.inches.toString()}"</p>
                
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

                        <p className="price">${plant.price.toString()}</p>
                        <Link to="/planters" className="link-planters">ADD A PLANTER</Link>

                        <button onClick={this.addItemToCart} className="add-to-cart"><i className="fas fa-shopping-cart"></i>&nbsp;&nbsp;add to cart</button>

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
                            src={plant.photoHoverUrl}
                            onClick={() => this.setState({displayMain: false})}/>
                        <img className="bottom-pic"
                            src={plant.photoMainUrl}
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
                        <p className="plant-details">{plant.overview}</p>
                    </div>

                </div>

                {/* <p>{plant.name}</p>
                <img src={plant.photoMainUrl} />
                <img src={plant.photoHoverUrl} /> */}

                <AddPlantModal open={this.state.openModal} onClose={this.openModal} />


            </div>
        )
    }


}

export default PlantShow;