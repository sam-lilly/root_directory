import React from 'react';
// import { Link } from 'react-router-dom';

class CartItemIndexItem extends React.Component {

    constructor(props) {
        super(props);
    }

    render () {

        let { cartItem } = this.props;

        if (!cartItem) return null;

        return (
            <div className="cart-item-index-item">
                <p>this is the lengthy mouthful CART ITEM INDEX ITEM</p>
                <p>{cartItem.product}</p>
                <p>{cartItem.quantity}</p>
                {/* need to be able to edit quantity here */}
            </div>
        )
    }
}

export default CartItemIndexItem;