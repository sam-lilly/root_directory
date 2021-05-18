import React from 'react';
import { Link } from 'react-router-dom';

class AddressIndexItem extends React.Component {

    constructor(props) {
        super(props);
        // this.state = {
        //     changed: true
        // };
        // this.handleDelete = this.handleDelete.bind(this);
    }

    // componentDidMount() {
    //     this.props.fetchAddress();
    // }

    // componentWillUnmount() {
    //     this.props.fetchAddress()
    // }

    // handleDelete(e) {
    //     e.preventDefault();
    //     this.props.deleteAddress(this.props.address.id)
        // this.setState({ changed: !this.state.changed})
    
        
        //     this.props.deleteAddress(this.props.address.id)
        // if (this.state) {
        //     this.setState({ changed: true })
        // } else {
        //     this.setState({ changed: false })
        // }
        // this.setState({changed: !this.state.changed})
    // }


    // componentWillUnmount() {

    // }


    render () {

        let { address, deleteAddress } = this.props;
        
        if (!address) return null;

        return (
            <div>
                <ul>
                    <li>
                        <p>hiii, im the address index item you were looking for :)</p>
                        <p>{address.first}</p>
                        <p>{address.last}</p>
                        <p>{address.company}</p>
                        <p>{address.address1}</p>
                        <p>{address.address2}</p>
                        <p>{address.city}</p>
                        <p>{address.state}</p>
                        <p>{address.country}</p>
                        <p>{address.zip}</p>
                        <p>{address.phone}</p>
                        <Link to ={`/addresses/${address.id}/edit`}>Edit Address</Link>
                        <button onClick={() => deleteAddress(address.id)}>remove address</button>
                        {/* <button onClick={this.handleDelete}>remove address</button> */}
                    </li>
                </ul>
            </div>
        )

    }

}

export default AddressIndexItem;