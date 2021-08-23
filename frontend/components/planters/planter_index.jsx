import React from 'react';
import PlanterIndexItem from './planter_index_item';
// import { Link } from 'react-router-dom';


class PlanterIndex extends React.Component {
    
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchPlanters();
    }

    render() {

        let { planters } = this.props;

        if (!planters) return null;


        return (

            <div className="planter-index">
            <div className="sections-search">
                <h1 className="sections-header"> </h1>

                <div className="dropdown">
                    <p className="size">Size</p>
                    <p>+</p>
                </div>

                <div className="dropdown">
                    <p>Type</p>
                    <p>+</p>
                </div>

                <div className="dropdown">
                    <p>Color</p>
                    <p>+</p>
                </div>

                <div className="dropdown">
                    <p>Material</p>
                    <p>+</p>
                </div>

                <div>
                     <br/>
                        ^UNDER CONSTRUCTION
                </div>


                {/* all the p tags with + will be dropdown links */}

            </div>


            <div className="top-column">

                <div>
                    <p className="all-plants">All Containers</p>
                </div>

                {/* <div className="underline-container">
                    <span className="underline">&nbsp;hi its me&nbsp;&nbsp;&nbsp;</span>
                </div> */}

                <div className="right-dropdown">
                    {/* <div>
                        <p className="sort-by">Sort by</p>
                        <p className="featured">Featured</p>
                    </div>
                    <div>
                        <i className="fas fa-chevron-down"></i>
                    </div> */}
                    {/* ADD THIS BACK ASAP!!!! */}
                </div>

            </div>



                {
                    planters.map(planter => <PlanterIndexItem key={planter.id} planter={planter} />)
                }
            

            <div>
                
            </div>


        </div>

            
        )
    }


}

export default PlanterIndex;