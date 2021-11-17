import React, { Component } from 'react'
import 'react-responsive-modal/styles.css';

class Modal extends Component {

    onClickButton = e =>{
        e.preventDefault()
        this.setState({openModal : true})
}
    render() {
        return (
            <div>
                <button onClick={this.onClickButton}>Click Me</button>
            </div>
        )
    }
}

export default Modal
