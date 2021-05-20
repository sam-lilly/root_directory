import React from 'react';
import CartIndexItem from './cart_index_item';
import { Link } from 'react-router-dom';

class CartIndex extends React.Component {

    constructor(props) {
        // debugger
        super(props);
        // this.state = 
        this.checkoutCart = this.checkoutCart.bind(this);
    }

    componentDidMount() {
        // debugger
        this.props.fetchCarts();
        this.props.fetchCartItems();

        // this.props.cartItems
    }

    componentDidUpdate(prevProps) {
        debugger
        if (prevProps.cart.id !== this.props.cart.id) {
            this.props.fetchCarts();
            this.props.fetchCartItems();
        }
    }


    checkoutCart() {
        this.props.createCart();
        // this.setState({ newCart: true });
    }

    render () {

        // let { cart } = this.props;

        // if (!cart) return null;

        let { items } = this.props;

        if (!items) return null;

        
        // debugger


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
                    <Link className="new-address" to="/addresses/new">Add New Address</Link>
                    {/* dummy value!! need to fix tomorrow 5/18 */}
                    {/* <p className="summary">Welcome to your dashboard, from here you are able to view your address book as well as past orders.</p> */}
                </div>


                {/* { cart.items ? cart.items.map(item => <CartIndexItem key={item.id} name={item.name} price={item.price} photo={item.photoCheckoutUrl}/> ) : <div>nope</div> } */}
                    {/* should make key be cart_item.key */}
                    {/* the above worked// what i 've been using before refactor */}

                {/* { cart.items ? cart.items.map(item => <CartIndexItem key={item.id} name={item.name} price={item.price} photo={item.photoCheckoutUrl}/> ) : <div>nope</div> } */}

                {/* { cart.items ? itemsQuant.map(item )} */}

                {/* { itemsQuant ? itemsQuant.map(item => <CartIndexItem key={item.id} name={item.name} price={item.price} quantity={item.quantity} photo={item.photoCheckoutUrl}/> ) : <div>nope</div> } */}
                { items.map(item => <CartIndexItem key={item.id} name={item.name} price={item.price} quantity={item.quantity} photo={item.photoCheckoutUrl}/> ) }

                <button onClick={this.checkoutCart}>Checkout</button>
            </div>
        )

    }
}

export default CartIndex;