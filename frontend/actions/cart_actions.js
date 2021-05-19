import * as CartApiUtil from '../util/cart_api_util';

export const RECEIVE_CARTS = "RECEIVE_CARTS"
export const RECEIVE_CART = "RECEIVE_CART"

const receiveCarts = (carts) => {
    // debugger
    return ({
        type: RECEIVE_CARTS,
        carts
    })
}

const receiveCart = (cart) => {
    // debugger
    return ({
        type: RECEIVE_CART,
        cart
    })
}

export const fetchCarts = () => (dispatch) => (
    CartApiUtil.fetchCarts()
        .then(carts => dispatch(receiveCarts(carts)))
)

export const fetchCart = (cartId) => (dispatch) => (
    CartApiUtil.fetchCart(cartId)
        .then(cart => dispatch(receiveCart(cart)))
)


export const createCart = () => (dispatch) => (
    CartApiUtil.createCart()
        .then(cart => dispatch(receiveCart(cart)))
)