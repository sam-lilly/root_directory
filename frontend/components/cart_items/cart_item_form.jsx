import React from 'react';
// import { Link } from 'react-router-dom';

class CartItemForm extends React.Component {

    constructor(props) {
        super(props);
        this.state = this.props.cartItem;
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update() {
        return e => {
            this.setState({ quantity: e.currentTargetValue})
        }
        // not sure if need to change this to account for drop down or + - 1
        // do not want user to enter number, want them to click +1  or -1
        // then on click count either +1 or -1
        // this will be updating quantity of item
    }

    handleSubmit() {
        // e.preventDefault();
        this.props.addOrEditItem(this.state)
    }

    render () {

        let { cartItem, formType, addOrEditItem } = this.props;

        if (!cartItem) return null;

        return (

            <div className="cart-item-add-and-update">
                <h1>this is the cart item add and update form!</h1>


                {/*
                    going to have button here to add item
                    edit quantity of item with +1 or -1
                    onclick of quantity it will render state
                    will then bubble up to change price of cart and whatnot

                
                */}

            </div>

        )

    }

}

export default CartItemForm;