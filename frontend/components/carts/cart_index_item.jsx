import React from 'react';
import { Link } from 'react-router-dom';

class CartIndexItem extends React.Component {

    render () {

        const { name, price, quantity } = this.props;

        debugger

        return (
            <div>
                <h1>its me betchh</h1>
                <p>{name}</p>
                <p>{price}</p>
                <p>{quantity}</p>
            </div>
        )


    }



}

export default CartIndexItem;