import * as CartApiUtil from '../util/cart_api_util';

export const RECEIVE_CARTS = "RECEIVE_CARTS"
export const RECEIVE_CART = "RECIEVE_CART"

const receiveCarts = (carts) => ({
    type: RECEIVE_CARTS,
    carts
})

const receiveCart = (cart) => ({
    type: RECEIVE_CART,
    cart
})

export const fetchCarts = () => (dispatch) => (
    CartApiUtil.fetchCarts()
        .then(carts => dispatch(receiveCarts(carts)))
)

export const fetchCart = () => (dispatch) => (
    CartApiUtil.fetchCart()
        .then(cart => dispatch(receiveCart(cart)))
)

export const createCart = () => (dispatch) => (
    CartApiUtil.createCart()
        .then(cart => dispatch(receiveCart(cart)))
)