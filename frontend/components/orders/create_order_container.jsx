import { connect } from 'react-redux';
import { createOrder } from '../../actions/order_actions';
import CreateOrder from './create_order';

const mSTP = (state) => ({
    formType: "Create Order"
})

const mDTP = (dispatch) => ({
    createOrder: (order) => dispatch(createOrder(order))
})

    // think about also including the create order action in the mDTP

export default connect (mSTP, mDTP)(CreateOrder);