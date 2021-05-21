import React from 'react';
import { Link } from 'react-router-dom';

class CartIndexItem extends React.Component {

    constructor(props) {
        super(props);

    }

    // removeItem() {
    //     this.props.deleteCartItem({cartItem: {id: 305} })
    // }


    render () {

        if (!this.props.name) return null;

        const { cartItemId, name, price, quantity, photo, updateCartItem, deleteCartItem } = this.props;

        debugger

        return (
            <div className="cart-index-items">
                {/* <h1>its me, the item in your cart</h1> */}
                <img className="cart-photo" src={photo}></img>
                <p>{name}</p>
                <p>{price}</p>
                <p>{quantity}</p>
                <button className="delete-item" onClick={() => deleteCartItem(cartItemId)}>Remove Item</button>
            </div>
        )


    }



}

export default CartIndexItem;