import React from 'react';
import { Link } from 'react-router-dom';

class PlanterIndexItem extends React.Component {

    render () {

        const { planter } = this.props;

        if (!planter) return null;
        

        return (
            <div>
                <ul>
                    <Link to={`/planters/${planter.id}`} className="product-container" >
                    {/* <li className="product-container"> */}
                            <img
                                src={planter.photoMainUrl}
                                className="main-images"
                                onMouseEnter={e => (e.currentTarget.src = planter.photoHoverUrl)}
                                onMouseLeave={e => (e.currentTarget.src = planter.photoMainUrl)}    
                            />
                            <p className="plant-name">{planter.name} | {planter.inches.toString()}"</p>
                            <p className="plant-price">${planter.price}</p>

                            {/* when implementing the pots changing pic at the bottom
                                will put the image then onMouseEnter change the above pic
                                but don't do the onMouseLeave as it will stay the same if
                                they navigate away until they hover again then will
                                essentially 'refresh' the pics with the onMouseLeave */}
                    </Link>
                    {/* </li> */}
                </ul>

            </div>
        )

    }
}

export default PlanterIndexItem;