import React from 'react';
import CartIndexItem from './cart_index_item';
import { Link } from 'react-router-dom';
import CheckoutModal from '../modals/checkout_modal';

class CartIndex extends React.Component {

    constructor(props) {
        super(props);
        debugger
        // if  (!this.props.carts) {
        //     this.state = { newItem: true,
        //                     newPrice: this.props.carts.totalPrice
        //                 }
        //     }
        this.state = { newItem: true,
                        newPrice: 1,
                        openModal: true }
        // this.props.carts ? this.state = { newItem: true } : this.state = { newItem: true, newPrice: this.props.totalPrice };

        this.checkoutCart = this.checkoutCart.bind(this);
        this.reRenderPriceUp = this.reRenderPriceUp.bind(this);
        this.reRenderPriceDown = this.reRenderPriceDown.bind(this);
        this.openModal = this.openModal.bind(this);

    }

    componentDidMount() {
        this.props.fetchCarts();
        this.props.fetchCartItems();
        this.setState({ newPrice: this.props.totalPrice })

        // this.props.cartItems
    }

    componentDidUpdate(prevProps) {
        if (prevProps.cart.id !== this.props.cart.id) {
            this.props.fetchCarts();
            this.props.fetchCartItems();
        }
    }


    reRenderPriceUp(addedPrice) {
        debugger
        if (this.state.newItem) {
            this.setState({ newItem: false })
        } else {
            this.setState({ newItem: true });
        }
        debugger
        this.setState({ newPrice: parseInt(this.state.newPrice) + addedPrice})
    }

    reRenderPriceDown(addedPrice) {
        debugger
        if (this.state.newItem) {
            this.setState({ newItem: false })
        } else {
            this.setState({ newItem: true });
        }
        this.setState({ newPrice: 0 })
    }



    checkoutCart() {
        this.props.createCart()
        this.openModal()

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

    openModal() {
        // e.preventDefault();
        this.setState({ openModal: !this.state.openModal });
    }


    render () {

        // let { cart } = this.props;

        // if (!cart) return null;

        let { items, updateCartItem, deleteCartItem, fetchCartItem } = this.props;

        if (!items) return null;

        debugger

        return (
            <div className="cart-index">



                <div className="index-container">
                    <h1 className="index">Index</h1>
                    <Link className="linkz" to="/account">MY ACCOUNT</Link>
                    <Link className="linkz" to="/addresses">ADDRESS BOOK</Link>
                    <Link className="linkz" to="/cart">MY ORDERS</Link>
                    {/* <Link className="linkz" to="/cart">MY CART</Link> */}
                    <Link className="logout-button" to="/" onClick={this.props.logout}>LOGOUT</Link>
                </div>

                <div className="greeting-header">
                    <h1 className="greeting">Shopping Cart</h1>
                    <div>
                    <p className="total-word">SUBTOTAL: <i className="total-price">${this.props.renderPrice}</i></p>
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
                                        // reRenderPrice={this.reRenderPrice}
                                        reRenderPriceUp={this.reRenderPriceUp}
                                        reRenderPriceDown={this.reRenderPriceDown}
                                    /> ) }
                <div className="checkout-container">
                    <Link className="continue-shop" to="/plants">Need More Plants</Link>
                    <button className="checkout" onClick={this.checkoutCart}>Checkout</button>
                </div>

                    
                <CheckoutModal open={this.state.openModal} onClose={this.openModal} />

            </div>
        )

    }
}

export default CartIndex;