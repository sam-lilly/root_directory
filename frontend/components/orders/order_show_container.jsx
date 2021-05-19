import { connect } from 'react-redux';
import { fetchOrder } from '../../actions/order_actions';
import OrderShow from './order_show';

const mSTP = (state, ownProps) => ({
    order: state.entities.orders[ownProps.match.params.orderId]
})

const mDTP = (dispatch) => ({
    fetchOrder: (order) => dispatch(fetchOrder(order))
})

export default connect (mSTP, mDTP)(OrderShow);