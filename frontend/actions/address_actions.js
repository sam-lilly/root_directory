import * as AddressApiUtil from '../util/address_api_util';

export const RECEIVE_ADDRESSES = "RECEIVE_ADDRESSES"
export const RECEIVE_ADDRESS = "RECEIVE_ADDRESS"
export const REMOVE_ADDRESS = "REMOVE_ADDRESS"

const receieveAddresses = (addresses) => ({
    type: RECEIVE_ADDRESSES,
    addresses
})

const receiveAddress = (address) => ({
    type: RECEIVE_ADDRESS,
    address
})

const removeAddress = (addressId) => ({
    type: REMOVE_ADDRESS,
    addressId
})

export const fetchAddresses = () => (dispatch) => (
    AddressApiUtil.fetchAddresses()
        .then(addresses => dispatch(receieveAddresses(addresses)))
)

export const fetchAddress = (addressId) => (dispatch) => (
    AddressApiUtil.fetchAddress(addressId)
        .then(address => dispatch(receiveAddress(address)))
)

export const createAddress = (address) => (dispatch) => (
    AddressApiUtil.createAddress(address)
        .then(address => dispatch(receiveAddress(address)))
)

export const updateAddress = (address) => (dispatch => (
    AddressApiUtil.updateAddress(address)
        .then(address => dispatch(receiveAddress(address)))
))

export const deleteAddress = (addressId) => (dispatch) => (
    AddressApiUtil.deleteAddress(addressId)
        .then(() => dispatch(removeAddress(addressId)))
)