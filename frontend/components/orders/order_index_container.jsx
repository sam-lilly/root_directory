import { connect } from 'react-redux';
import { fetchOrders, fetchOrder} from '../../actions/order_actions';
import OrderIndex from './order_index';


const mSTP = (state) => ({
    orders: Object.values(state.entities.orders)
})

const mDTP = (dispatch) => ({
    fetchOrders: () => dispatch(fetchOrders()),
    fetchOrder: (order) => dispatch(fetchOrder(order)),
})

    // think about also including the create order action in the mDTP

export default connect (mSTP, mDTP)(OrderIndex);