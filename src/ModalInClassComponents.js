import React,{Component} from "react";
import Table from './Table'
import Form from './Form'
import 'react-responsive-modal/styles.css';
import { Modal } from 'react-responsive-modal';
import './Table.css'

class ModalInClassComponents extends Component {

    constructor(props) {
        super(props)
    
        this.state = {
            catagory: '',
            amount: '',
            date: '',
            expensename: '',
            description: '',
            items: [],
            openModal : false
        }
    }
  
    handleFormSubmit = (e) => {
        e.preventDefault();
    
        let items = [...this.state.items];
    
        items.push({
          catagory: this.state.catagory, 
          amount: this.state.amount,
          date: this.state.date,
          expensename: this.state.expensename,
          description: this.state.description
        });
    
        this.setState({
          items,
          catagory: '',
          amount: '',
          date: '',
          expensename: '',
          description: ''
        });
      };
  
      handleInputChange = (e) => {
        let input = e.target;
        let name = e.target.name;
        let value = input.value;
    
        this.setState({
          [name]: value
        })
      };
      
    onClickButton = e =>{
        e.preventDefault()
        this.setState({openModal : true})
    }
  
    onCloseModal = ()=>{
        this.setState({openModal : false})
    }
  
    render() {
        return (
            <div>
                <button onClick={this.onClickButton}>Add Expense</button>
                <Modal open={this.state.openModal} onClose={this.onCloseModal}>
                    <Form handleFormSubmit={ this.handleFormSubmit } 
                        handleInputChange={ this.handleInputChange } 
                        Catagory={ this.state.catagory } 
                        Amount={ this.state.amount }
                        Date={this.state.date}
                        ExpenseName={this.state.expensename}
                        Description={this.state.description}
                        />
                </Modal>   
                <div className="app-container">
                <Table items={ this.state.items }/>
                </div>
            </div>
        )
    }  
  }

export default ModalInClassComponents