import * as SearchApiUtil from '../util/seach_api_util';

export const RECEIVE_SEARCH = "RECEIVE_SEARCH";
export const CLEAR_SEARCH = "CLEAR_SEARCH"

const receiveSearch = (searchResult) => ({
    type: RECEIVE_SEARCH,
    searchResult
})

export const clearSearch = () => ({
    type: clearSearch
})

export const fetchSearch = (query) => (dispatch) => (
    SearchApiUtil.fetchSearch(query)
        .then(searchResult => dispatch(receiveSearch(searchResult)))
)