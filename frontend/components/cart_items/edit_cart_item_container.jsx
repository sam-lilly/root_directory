import React from 'react';
import { connect } from 'react-router-dom';
import { fetchCartItem, updateCartItem } from '../../actions/cart_items_actions';
import CartItemForm from './cart_item_form';

class EditCartItem extends React.Component {

    componentDidMount() {
        this.props.fetchCartItem(this.props.match.params.cartItemId);
    }

    render () {

        const { cartItem, formType, addOrEditItem } = this.props;

        if (!cartItem) return null;

        return (
            <CartItemForm
                cartItem={cartItem}
                formType={formType}
                addOrEditItem={addOrEditItem} />
        );
    }

}


const mSTP = (state) => ({
    cartItem: state.entities.cartItems[ownProps.match.params.cartItemId],
    formType: "Update Cart Item, change quantity"
})

const mDTP = (disatch) => ({
    fetchCartItem: (cartItemId) => dispatch(fetchCartItem(cartItemId)),
    addOrEditItem: (cartItem) => dispatch(updateCartItem(cartItem))
})

export default connect (mSTP, mDTP)(EditCartItem);