import React, { Component } from "react";

class Form extends Component {
    render() {
      return (
        <div id="Form">
          <h3>Add a new item to the table:</h3>  
          <form onSubmit={this.props.handleFormSubmit}>
            <label>
            Catagory:
            <input  id="catagory" 
                    value={this.props.Catagory} 
                    type="catagory" name="catagory" 
                    onChange={this.props.handleInputChange} />
            </label>
            <br/>
            <label>
            Amount Spend:
            <input  id="amount" 
                    value={this.props.Amount} 
                    type="amount" name="amount" 
                    onChange={this.props.handleInputChange} />
            </label>
            <br/>
            <label >
              Date of Transaction:
              <input  id="date" 
                      value={this.props.Date} 
                      type="date" name="date" 
                      onChange={this.props.handleInputChange}/>
            </label>
            <br/>
            <label>
              Expense Name:
              <input  id="expensename" 
                      value={this.props.ExpenseName} 
                      type="expensename" name="expensename" 
                      onChange={this.props.handleInputChange}/>
            </label>
            <br/>
            <label>
            Description:
            <input  id="description" 
                    value={this.props.description} 
                    type="description" name="description" 
                    onChange={this.props.handleInputChange}/>
            </label>
            <br/>
            <button type="submit" value="Submit">Submit</button>
          </form>
        </div>
      );
    }
  }

export default Form