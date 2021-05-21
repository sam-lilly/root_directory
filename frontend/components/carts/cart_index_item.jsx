import React from 'react';
import { Link } from 'react-router-dom';

class CartIndexItem extends React.Component {

    constructor(props) {
        super(props);
        // this.state = {
        //     changed: false
        // }
        // this.handleUpdate = this.handleUpdate.bind(this);
        // this.deleteCartItem = this.deleteCartItem.bind(this);
        this.handleCountPlus = this.handleCountPlus.bind(this);
    }


    // componentDidMount() {
    //     this.props.fetchCartItem(this.props.cartItemId)
    // }

    // componentDidUpdate() {
    //     if (this.state.changed) {
    //         this.props.fetchCartItem(this.props.cartItemId)
    //         this.setState({ changed: false })
    //     }
    // }

    // handleAdd() {
    //     // return () => {
    //         debugger
    //         this.setState({ count: count + 1})
    //     // }
    // }

    // handleSubtract() {
    //     // return ()) => {
    //         debugger
    //         if (this.state.count === 1) {
    //             this.deleteCartItem
    //         } else
    //         this.setState({ count: count - 1})
    //     // }
    // }

    // deleteCartItem() {
    //     this.props.deleteCartItem(this.props.CartItemId)
    // }


    handleCountPlus() {
        debugger
        let count = this.props.quantity + 1;
        this.props.updateCartItem({cart_item_id: this.props.cartItemId, cart_id: this.props.cartId, product_id: this.props.productId, quantity: count })
            // .then(this.setState({ changed: true }))
    }



    render () {

        if (!this.props.name) return null;

        const { cartItemId,
                name,
                inches,
                price,
                cartId,
                productId,
                quantity,
                photo,
                updateCartItem,
                deleteCartItem } = this.props;

        // debugger

        return (
            <div className="cart-index-items">
                {/* <h1>its me, the item in your cart</h1> */}
                <img className="cart-photo" src={photo}></img>
                <p>{name}</p>
                <p>{inches}</p>
                <p>{price}</p>
                <p>{cartId}</p>
                <p>{productId}</p>
                <p>{quantity}</p>
                {/* <button onClick={this.}>remove one</button> */}
                <button onClick={this.handleCountPlus}>add another</button>
                {/* <button className="delete-item" onClick={() => deleteCartItem(cartItemId)}>Remove Item</button> */}
                <button className="delete-item" onClick={() => deleteCartItem(cartItemId)}>Remove Item</button>
            </div>
        )


    }



}

export default CartIndexItem;