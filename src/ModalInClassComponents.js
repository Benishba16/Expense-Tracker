import React,{Component} from "react";
import 'react-responsive-modal/styles.css';
import { Modal } from 'react-responsive-modal';
import Form from "./Form";

class ModalInClassComponents extends Component {

  state = {
    openModal : false
}

onClickButton = e => {
    e.preventDefault()
    this.setState({
      openModal : true
    })
  }

  onCloseModal = () => {
    this.setState({
      openModal:false
    })
  }
  
    render() {
        return (
            <div>
                <button onClick={this.onClickButton}>Add Expense</button>
                <Modal open={this.state.openModal} onClose={this.onCloseModal}>
                    <Form handleFormSubmit={this.props.handleFormSubmit}
                        handleInputChange={this.props.handleInputChange}
                        Catagory = {this.props.catagory}
                        Amount = {this.props.amount}
                        ExpenseName = {this.props.expensename}
                        Date = {this.props.date}
                        Description = {this.props.description}
                        />
                </Modal>   
            </div>
        )
    }  
  }

export default ModalInClassComponents