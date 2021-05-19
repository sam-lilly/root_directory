import React from 'react';
// import { Link } from 'react-router-dom';


class CreateOrder extends React.Component {

    constructor(props) {
        super(props);
        this.handleSubmit = this.handleSubmit.bind(this);
        // this will handle submit when user completes cart order
        // will create new order in users account page
    }

    handleSubmit() {
        this.props.createOrder()
    }

    render () {

        let { formType } = this.props;

        if (!formType) return null;

        // ^^formType doesn't mean much here
        // will prob need to add more props

        return (
            <div className="create-order">
                <h1>this is the create order form</h1>
                <form className="new-order" onSubmit={this.handleSubmit}>
                    <button>submit???</button>
                    
                    
                    <p>
                        this is triggered when someone checks
                        out completely // user doesn't actually submit or click this
                        may be better to write function for checkout
                        and then call create order inside the checkout function
                        when changing complete boolean to true then creating new order 
                    </p>

                </form>

            </div>
        )
    }
}

export default CreateOrder;