import './App.css';
import Table from './Table';
import React, { Component } from 'react'
import ModalInClassComponents from './ModalInClassComponents';
import './Table.css'


class App extends Component {

  constructor(props) {
    super(props)
  
    this.state = {
       catagory : '',
       amount : '',
       expensename : '',
       date : '',
       description : '',
       items : []
    }
  }

  handleFormSubmit = e => {
    e.preventDefault();

    let items = [...this.state.items];

    items.push({
      catagory : this.state.catagory,
      amount : this.state.amount,
      expensename : this.state.expensename,
      date : this.state.date,
      description : this.state.description
    })

    this.setState({
      items,
      catagory : '',
      amount : '',
      expensename : '',
      date : '',
      description : ''
    })
  }

  handleInputChange = e => {
    let input = e.target;
    let name = e.target.name;
    let value = input.value;

    this.setState({
      [name] :value
    })
  };

  render() {
    return (
      <div className="App">
        <ModalInClassComponents 
        handleFormSubmit={this.handleFormSubmit}
        handleInputChange={this.handleInputChange}
        Catagory = {this.state.catagory}
        Amount = {this.state.amount}
        ExpenseName = {this.state.expensename}
        Date = {this.state.date}
        Description = {this.state.description}
        />
        <div className="app-container">
            <Table items={this.state.items}/>
        </div>
      </div>
    );
  }
}

export default App