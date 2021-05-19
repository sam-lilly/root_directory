export const fetchCarts = () => {
    // debugger
    return (
        $.ajax({
            method: "GET",
            url: `/api/carts`
        })
    )
}

export const fetchCart = (cartId) => (
    $.ajax({
            method: "GET",
            url: `/api/carts/${cartId}`
        })   
)

export const createCart = () => (
    $.ajax({
        method: "POST",
        url: `/api/carts/`,
        // data: {cart}
    })
)