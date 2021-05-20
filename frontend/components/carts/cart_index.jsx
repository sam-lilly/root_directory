import React from 'react';
import CartIndexItem from './cart_index_item';

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

        debugger



        // if (cart) {
        //     const mapped = cart.items.map((item, i) => {
        //         debugger
        //         return (
        //             <div>
        //             <h1>its me betchh</h1>
        //             <p>{item.name}</p>
        //             <p>{item.price}</p>
        //             <p>{item.quantity}</p>
        //             </div>
        //         )
        //     })
        // }








        return (
            <div className="cart-show-page">
                <h1>hey! im the cart index page</h1>
                <p>do these things work below??</p>
                <p>{cart.id}</p>
                <p>{cart.userId}</p>

                {/* {   
                    if (cart.items) {
                    return ({
                        cart.items.map(item => <CartIndexItem key={item.id} name={item.name} price={item.price} quantity={item.quantity} />)
                    })
                } */}

                { cart.items ? cart.items.map(item => <CartIndexItem key={item.id} name={item.name} price={item.price} /> ) : <div>nope</div> }
                    {/* should make key be cart_item.key */}
                {/* <p>{mapped}</p> */}



                {/* <p>{cart.items}</p> */}
                <p>may have to make items or index page because is items an array?? IDK</p>

                <button onClick={this.checkoutCart}>Checkout</button>
            </div>
        )

    }
}

export default CartIndex;