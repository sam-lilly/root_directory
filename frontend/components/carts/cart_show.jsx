import React from 'react';

class CartShow extends React.Component {

    constructor(props) {
        // debugger
        super(props);
    }

    componentDidMount() {
        // debugger
        this.props.fetchCart(this.props.match.params.cartId);
    }

    render () {

        let { cart } = this.props;

        // debugger

        if (!cart) return null;

        // debugger

        return (
            <div className="cart-show-page">
                <h1>hey! im the cart show page</h1>
                <p>do these things work below??</p>
                <p>{cart.id}</p>
                <p>{cart.user_id}</p>
                {/* <p>{cart.items}</p> */}
                <p>may have to make items or index page because is items an array?? IDK</p>
            </div>
        )

    }
}

export default CartShow;