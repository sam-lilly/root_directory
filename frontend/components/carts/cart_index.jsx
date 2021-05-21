import React from 'react';
import CartIndexItem from './cart_index_item';
import { Link } from 'react-router-dom';

class CartIndex extends React.Component {

    constructor(props) {
        super(props);
        // this.state = 
        this.checkoutCart = this.checkoutCart.bind(this);
    }

    componentDidMount() {
        this.props.fetchCarts();
        this.props.fetchCartItems();

        // this.props.cartItems
    }

    componentDidUpdate(prevProps) {
        if (prevProps.cart.id !== this.props.cart.id) {
            this.props.fetchCarts();
            this.props.fetchCartItems();
        }
    }


    checkoutCart() {
        this.props.createCart()
        // this.props.createCart({
        //     delivery_date: "5/22/2021",
        //     delivery_type: "delivery",
        //     order_total: this.props.cart.totalPrice,
        //     address_id: this.props.cart.addressId,
        //     cart_id: this.props.cart.id,
        //     user_id: this.props.cart.userId,
        // });

        // add in info here // current_user.address.first.id

        // this.setState({ newCart: true });
    
        // delivery_date: "5/22/2021"
        // delivery_type: "delivery"
        // order_total: this.props.cart.totalPrice
        // address_id: this.props.cart.addressId
        // cart_id: this.props.cart.id     
        // user_id: this.props.carts.userId
    }

    render () {

        // let { cart } = this.props;

        // if (!cart) return null;

        let { items, updateCartItem, deleteCartItem, fetchCartItem } = this.props;

        if (!items) return null;


        return (
            <div className="cart-index">



                <div className="index-container">
                    <h1 className="index">Index</h1>
                    <Link className="linkz" to="/account">MY ACCOUNT</Link>
                    <Link className="linkz" to="/addresses">ADDRESS BOOK</Link>
                    <Link className="linkz" to="/orders">MY ORDERS</Link>
                    {/* <Link className="linkz" to="/cart">MY CART</Link> */}
                    <Link className="logout-button" to="/" onClick={this.props.logout}>LOGOUT</Link>
                </div>

                <div className="greeting-header">
                    <h1 className="greeting">Shopping Cart</h1>
                    <div>
                    <p className="total-word">SUBTOTAL: <i className="total-price">${this.props.cart.totalPrice}</i></p>
                    {/* <i className="total-price">{this.props.cart.totalPrice}</i> */}
                    {/* <Link className="new-address" to="/plants">Add More Items</Link> */}
                    </div>
                    {/* dummy value!! need to fix tomorrow 5/18 */}
                    {/* <p className="summary">Welcome to your dashboard, from here you are able to view your address book as well as past orders.</p> */}
                </div>

                { items.map(item => <CartIndexItem  
                                        key={item.id}
                                        cartItemId={item.id}
                                        name={item.name}
                                        inches={item.inches}
                                        price={item.price}
                                        cartId={item.cartId}
                                        productId={item.productId}
                                        quantity={item.quantity}
                                        photo={item.photoCheckoutUrl}
                                        fetchCartItem={fetchCartItem}
                                        updateCartItem={updateCartItem}
                                        deleteCartItem={deleteCartItem}
                                    /> ) }
                <div className="checkout-container">
                    <Link className="continue-shop" to="/plants">Need More Plants</Link>
                    <button className="checkout" onClick={this.checkoutCart}>Checkout</button>
                </div>
            </div>
        )

    }
}

export default CartIndex;