export const fetchSearch = (query) => {
    return (
        $.ajax({
            method: "GET",
            url: `api/searches?query=${query}`
        })
    )
}

// export const clearSearch = () => {
//     return (
//         $.ajax({
//             method: "GET",
//             // url: ???
//         })
//     )
// }

// do not need this