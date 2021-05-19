export const fetchCarts = () => (
    $.ajax({
        method: "GET",
        url: `/api/carts`
    })
)

export const fetchCart = (cartId) => (
    $.ajax({
        method: "GET",
        url: `/api/carts/${cartId}`
    })
)