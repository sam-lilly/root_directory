import React from 'react';
// import { Link } from 'react-router-dom'
import CartItemIndexItem from './cart_item_index_item';

class CartItemIndex extends React.Component {

    componentDidMount() {
        this.props.fetchCartItems()
    }

    render () {

        let { cartItems, fetchCartItems, deleteCartItem } = this.props;

        if (!cartItems) return null;

        return (
            <div className="cart-item-index">

                <h1>i am the cart item index!</h1>

                <div className="cart-index-items">
                    {
                        cartItems.map(cartItem => <CartItemIndexItem key={cartItem.id} cartItem={cartItem} deleteCartItem={deleteCartItem} />)
                    }

                    {/* should i be putting the update on this one as well?? IDK!! */}

                </div>

            </div>

        )
    }

}

export default CartItemIndex;