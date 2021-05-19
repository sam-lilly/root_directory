import React from 'react';

class OrderShow extends React.component {

    componentDidMount() {
        this.props.fetchOrder(this.props.match.params.orderId);
    }

    render () {

        let { order } = this.props;

        if (!order) return null;

        return (
            <div className="order-show-page">
                <h1>i am the order show page</h1>
                <p>{order.id}</p>
                <p>{order.user_id}</p>
                <p>{order.cart_id}</p>
                <p>{order.address_id}</p>
                <p>{order.delivery_date}</p>
                <p>{order.delivery_type}</p>
                <p>{order.order_total}</p>
                <p>{order.address}</p>
            </div>
        )
    }
}

export default OrderShow;