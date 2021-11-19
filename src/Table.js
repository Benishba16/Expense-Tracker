import React, { Component } from "react";


class Table extends Component {
    render() {
      const items = this.props.items;
      return (
        <div id="Table">
          <table>
            <tbody>
              <tr>
                <th>Expense Catagory</th>
                <th>Amount Spend</th>
                <th>Date</th>
                <th>Expense Name</th>
                <th>Description</th>
              </tr>
              {items.map(item => {
                return (
                  <tr key={item}>
                    <td>{item.catagory}</td>
                    <td>{item.amount}</td>
                    <td>{item.date}</td>
                    <td>{item.expensename}</td>
                    <td>{item.description}</td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      );
    }
  }

export default Table