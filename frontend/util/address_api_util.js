export const fetchAddresses = () => (
    $.ajax({
        method: "GET",
        url: `/api/addresses`
    })
)

export const fetchAddress = (addressId) => (
    $.ajax({
        method: "GET",
        url: `/api/addresses/${addressId}`
    })
)

export const createAddress = (address) => (
    $.ajax({
        method: "POST",
        url: `/api/addresses`,
        data: { address }
    })
)

export const updateAddress = (address) => (
    $.ajax({
        method: "PATCH",
        url: `/api/addresses/${address.id}`,
        data: {address}
    })
)

export const deleteAddress = (addressId) => (
    $.ajax({
        method: "DELETE",
        url: `/api/addresses/${addressId}`
    })
)

