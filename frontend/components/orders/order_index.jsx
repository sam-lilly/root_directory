import React from 'react';
import OrderIndexItem from './order_index_item';
// import { Link } from 'react-router-dom';

class OrderIndex extends React.Component {

    componentDidMount() {
        this.props.fetchOrders()
    }

    render () {

        let { orders } = this.props;

        if (!orders) return null;

        return (
            <div className="order-index">

                <h1>this is the order index!</h1>

                <div className="order-items">
                    {
                        orders.map(order => <OrderIndexItem key={order.id} order={order} />)
                    }
                </div>

            </div>

        )
    }
}

export default OrderIndex;