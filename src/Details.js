import React, { Component } from 'react'
import ModalInClassComponents from './ModalInClassComponents'
import Table from './Table'

class Details extends Component {
    // constructor(props) {
    //     super(props);
    
    //     this.state = {
    //       username: '',
    //       password: '',
    //       items: []
    //     }
    //   };
    
    //   handleFormSubmit = (e) => {
    //     e.preventDefault();
    
    //     let items = [...this.state.items];
    
    //     items.push({username: this.state.username, password: this.state.password});
    
    //     this.setState({
    //       items,
    //       username: '',
    //       password: ''
    //     });
    //   };
    
    //   handleInputChange = (e) => {
    //     let input = e.target;
    //     let name = e.target.name;
    //     let value = input.value;
    
    //     this.setState({
    //       [name]: value
    //     })
    //   };
    render() {
        return (
            <div>
                <ModalInClassComponents/>
                <Table items={ this.state.items }/>
            </div>
        )
    }
}

export default Details
