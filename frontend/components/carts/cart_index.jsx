import React from 'react';

class CartIndex extends React.Component {

    constructor(props) {
        // debugger
        super(props);
        // this.state = { newCart: false }
        this.checkoutCart = this.checkoutCart.bind(this);
    }

    componentDidMount() {
        // debugger
        this.props.fetchCarts();
    }

    componentDidUpdate(prevProps) {
        debugger
        if (prevProps.cart.id !== this.props.cart.id) {
            this.props.fetchCarts();
        }
    }


    checkoutCart() {
        this.props.createCart();
        // this.setState({ newCart: true });
    }

    render () {

        let { cart } = this.props;

        // debugger

        if (!cart) return null;

        // debugger

        return (
            <div className="cart-show-page">
                <h1>hey! im the cart index page</h1>
                <p>do these things work below??</p>
                <p>{cart.id}</p>
                <p>{cart.userId}</p>
                {/* <p>{cart.items}</p> */}
                <p>may have to make items or index page because is items an array?? IDK</p>

                <button onClick={this.checkoutCart}>Checkout</button>
            </div>
        )

    }
}

export default CartIndex;