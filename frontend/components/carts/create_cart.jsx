import React from 'react';
// import { Link } from 'react-router-dom';

// do i need a form since the user doesn't have any input??

class CreateCart extends React.Component {

    constructor(props) {
        super(props);
        this.handleSubmit = this.handleSubmit.bind(this);
        // i think will need handle submit when checking out other cart
        // that is what triggers the new create cart request
    }

    handleSubmit() {
        // e.preventDefault();
        this.props.createCart()
    }

    render () {

        let { formType } = this.props;

        if (!formType) return null;

        // ^dummy value to see if anything present


        // things to go in the render return
        // there needs to be a button to click (that is when you submit order / checkout order)
        // when you checkout / complete order it triggers the request
        // and creates a new cart for the current user in carts controller
        // switched the cart completed: false to true
        // and then triggers create order on orders page



        return (
            <div className="create-cart">
                <h1>this is the create cart form</h1>
                <form className="new-cart" onSubmit={this.handleSubmit}>
                    <button>Confirm Order</button>
                    {/* this button is the final button to click when checking out */}
                </form>

            </div>
        )


    }

}

export default CreateCart;