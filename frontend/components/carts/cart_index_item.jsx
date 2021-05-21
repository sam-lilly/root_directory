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
        this.handleCountMinus = this.handleCountMinus.bind(this);
        // this.reRenderPrice = this.props.reRenderPrice.bind(this);
        this.reRenderPriceUp = this.props.reRenderPriceUp.bind(this);
        this.reRenderPriceDown = this.props.reRenderPriceDown.bind(this);
        this.removeCartItem = this.removeCartItem.bind(this);
    }


    // componentDidMount() {
    //     this.props.fetchCartItem(this.props.cartItemId)
    // }

    // componentDidUpdate(prevProps) {

    //     debugger
    //     if (prevProps.quantity !== this.props.quantity) {
    //      this.props.reRenderPriceUp(this.props.price);
    //     }
    // }

    // handleAdd() {
    //     // return () => {
    //         this.setState({ count: count + 1})
    //     // }
    // }

    // handleSubtract() {
    //     // return ()) => {
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
        let count = this.props.quantity + 1;
        this.props.updateCartItem({cart_item_id: this.props.cartItemId, cart_id: this.props.cartId, product_id: this.props.productId, quantity: count })
            // .then(this.setState({ changed: true }))
        // this.reRenderPriceUp(this.props.price);
    }

    handleCountMinus() {
        if (this.props.quantity === 1) {
            this.props.deleteCartItem(this.props.cartItemId)
                // .then(this.reRenderPriceDown(this.props.price));
            
        } else {
            let count = this.props.quantity - 1;
            this.props.updateCartItem({cart_item_id: this.props.cartItemId, cart_id: this.props.cartId, product_id: this.props.productId, quantity: count })
        }
        // this.reRenderPriceDown(this.props.price);
    }


    removeCartItem() {
        this.props.deleteCartItem(this.props.cartItemId);
        this.reRenderPriceDown(this.props.price);
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


        return (
            <div className="cart-index-items">
                {/* <h1>its me, the item in your cart</h1> */}
                <img className="cart-photo" src={photo}></img>
                <p className="item-name">{name} | {inches}"</p>
                <p className="price">PRICE: ${price}/per item</p>
                {/* <p>{cartId}</p>
                <p>{productId}</p> */}
                <div className="quantity-div">
                    <button className="change-butt" onClick={this.handleCountMinus}>- 1</button>
                    <p>QUANTITY: {quantity}</p>
                    <button className="change-butt" onClick={this.handleCountPlus}>+ 1</button>
                </div>
                {/* <button className="delete-item" onClick={() => deleteCartItem(cartItemId)}>Remove Item</button> */}
                {/* <button className="delete-item" onClick={() => deleteCartItem(cartItemId)}>REMOVE ITEM</button> */}
                <button className="delete-item" onClick={this.removeCartItem}>REMOVE ITEM</button>

            </div>
        )


    }



}

export default CartIndexItem;