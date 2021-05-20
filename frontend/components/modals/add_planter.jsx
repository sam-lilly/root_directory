import React from 'react';
import { Link } from 'react-router-dom';

class AddPlanterModal extends React.Component {

    onClose = (e) => {
        this.props.onClose && this.props.onClose(e);
    }

    render () {
        if (this.props.open) return null;


        return (
            <div className="add-plant-modal">

                {/* somehow set class of plant-show to position:fixed
                    when modal is open //  */}

                <div className="modal-inner-box">

                    <div className="mod-head">
                        <h1 className="item-added">THIS ITEM HAS BEEN ADDED!</h1>
                    </div>

                    <div className="mod-butts">
                        <button className="continue-shop" onClick={this.onClose}>continue shopping</button>
                        <Link className="checkout-shop" to="/cart">checkout</Link>
                    </div>

                </div>

                <div className="x-in-corner">
                    <button onClick={this.onClose}><i className="fas fa-times"></i></button>
                </div>

            </div>
        )

    }

}

export default AddPlanterModal;