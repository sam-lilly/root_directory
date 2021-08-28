import React from 'react';
import SearchIndexItem from './search_index_item';

class SearchIndex extends React.Component {

    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchSearch();
    }

    render() {

        return (
            <div>
                <h1>this is the search results</h1>
            </div>
        )
    }


}

export default SearchIndex;