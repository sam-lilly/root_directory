import React from 'react';
// import { Link } from 'react-router-dom';

class OrderIndexItem extends React.Component {

    constructor(props) {
        super(props);
    }

    render () {

        let { order } = this.props;

        if (!order) return null;

        return (
            <div className="order-index-item">
                <p>this is order index item</p>

                <p>{order.cart_id}</p>
                <p>{order.order_total}</p>

                <p>this page will have order#, date, and total</p>
                <p>need to pull created at from table</p>

            </div>
        )
    }
}

export default OrderIndexItem;