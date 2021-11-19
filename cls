warning: LF will be replaced by CRLF in src/App.js.
The file will have its original line endings in your working directory
[1mdiff --git a/src/App.js b/src/App.js[m
[1mindex 138a3e5..842dff2 100644[m
[1m--- a/src/App.js[m
[1m+++ b/src/App.js[m
[36m@@ -1,12 +1,73 @@[m
[31m-import React from "react";[m
[31m-import ModalInClassComponents from './ModalInClassComponents'[m
[32m+[m[32mimport './App.css';[m
[32m+[m[32mimport Table from './Table';[m
[32m+[m[32mimport React, { Component } from 'react'[m
[32m+[m[32mimport ModalInClassComponents from './ModalInClassComponents';[m
[32m+[m[32mimport './Table.css'[m
 [m
[31m-class App extends React.Component {[m
[32m+[m
[32m+[m[32mclass App extends Component {[m
[32m+[m
[32m+[m[32m  constructor(props) {[m
[32m+[m[32m    super(props)[m
[32m+[m[41m  [m
[32m+[m[32m    this.state = {[m
[32m+[m[32m       catagory : '',[m
[32m+[m[32m       amount : '',[m
[32m+[m[32m       expensename : '',[m
[32m+[m[32m       date : '',[m
[32m+[m[32m       description : '',[m
[32m+[m[32m       items : [][m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  handleFormSubmit = e => {[m
[32m+[m[32m    e.preventDefault();[m
[32m+[m
[32m+[m[32m    let items = [...this.state.items];[m
[32m+[m
[32m+[m[32m    items.push({[m
[32m+[m[32m      catagory : this.state.catagory,[m
[32m+[m[32m      amount : this.state.amount,[m
[32m+[m[32m      expensename : this.state.expensename,[m
[32m+[m[32m      date : this.state.date,[m
[32m+[m[32m      description : this.state.description[m
[32m+[m[32m    })[m
[32m+[m
[32m+[m[32m    this.setState({[m
[32m+[m[32m      items,[m
[32m+[m[32m      catagory : '',[m
[32m+[m[32m      amount : '',[m
[32m+[m[32m      expensename : '',[m
[32m+[m[32m      date : '',[m
[32m+[m[32m      description : ''[m
[32m+[m[32m    })[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m  handleInputChange = e => {[m
[32m+[m[32m    let input = e.target;[m
[32m+[m[32m    let name = e.target.name;[m
[32m+[m[32m    let value = input.value;[m
[32m+[m
[32m+[m[32m    this.setState({[m
[32m+[m[32m      [name] :value[m
[32m+[m[32m    })[m
[32m+[m[32m  };[m
 [m
   render() {[m
     return ([m
       <div className="App">[m
[31m-        <ModalInClassComponents/>[m
[32m+[m[32m        <ModalInClassComponents[m[41m [m
[32m+[m[32m        handleFormSubmit={this.handleFormSubmit}[m
[32m+[m[32m        handleInputChange={this.handleInputChange}[m
[32m+[m[32m        Catagory = {this.state.catagory}[m
[32m+[m[32m        Amount = {this.state.amount}[m
[32m+[m[32m        ExpenseName = {this.state.expensename}[m
[32m+[m[32m        Date = {this.state.date}[m
[32m+[m[32m        Description = {this.state.description}[m
[32m+[m[32m        />[m
[32m+[m[32m        <div className="app-container">[m
[32m+[m[32m            <Table items={this.state.items}/>[m
[32m+[m[32m        </div>[m
       </div>[m
     );[m
   }[m
[1mdiff --git a/src/Details.js b/src/Details.js[m
[1mdeleted file mode 100644[m
[1mindex c65460c..0000000[m
[1m--- a/src/Details.js[m
[1m+++ /dev/null[m
[36m@@ -1,49 +0,0 @@[m
[31m-import React, { Component } from 'react'[m
[31m-import ModalInClassComponents from './ModalInClassComponents'[m
[31m-import Table from './Table'[m
[31m-[m
[31m-class Details extends Component {[m
[31m-    // constructor(props) {[m
[31m-    //     super(props);[m
[31m-    [m
[31m-    //     this.state = {[m
[31m-    //       username: '',[m
[31m-    //       password: '',[m
[31m-    //       items: [][m
[31m-    //     }[m
[31m-    //   };[m
[31m-    [m
[31m-    //   handleFormSubmit = (e) => {[m
[31m-    //     e.preventDefault();[m
[31m-    [m
[31m-    //     let items = [...this.state.items];[m
[31m-    [m
[31m-    //     items.push({username: this.state.username, password: this.state.password});[m
[31m-    [m
[31m-    //     this.setState({[m
[31m-    //       items,[m
[31m-    //       username: '',[m
[31m-    //       password: ''[m
[31m-    //     });[m
[31m-    //   };[m
[31m-    [m
[31m-    //   handleInputChange = (e) => {[m
[31m-    //     let input = e.target;[m
[31m-    //     let name = e.target.name;[m
[31m-    //     let value = input.value;[m
[31m-    [m
[31m-    //     this.setState({[m
[31m-    //       [name]: value[m
[31m-    //     })[m
[31m-    //   };[m
[31m-    render() {[m
[31m-        return ([m
[31m-            <div>[m
[31m-                <ModalInClassComponents/>[m
[31m-                <Table items={ this.state.items }/>[m
[31m-            </div>[m
[31m-        )[m
[31m-    }[m
[31m-}[m
[31m-[m
[31m-export default Details[m
[1mdiff --git a/src/Form.js b/src/Form.js[m
[1mindex 696bc14..e6f6d1a 100644[m
[1m--- a/src/Form.js[m
[1m+++ b/src/Form.js[m
[36m@@ -1,20 +1,20 @@[m
[31m-import React from "react";[m
[32m+[m[32mimport React, { Component } from "react";[m
 [m
[31m-class Form extends React.Component {[m
[32m+[m[32mclass Form extends Component {[m
     render() {[m
       return ([m
         <div id="Form">[m
           <h3>Add a new item to the table:</h3>  [m
           <form onSubmit={this.props.handleFormSubmit}>[m
[31m-            <label htmlFor="catagory">[m
[32m+[m[32m            <label>[m
             Catagory:[m
             <input  id="catagory" [m
                     value={this.props.Catagory} [m
[31m-                    type="text" name="catagory" [m
[32m+[m[32m                    type="catagory" name="catagory"[m[41m [m
                     onChange={this.props.handleInputChange} />[m
             </label>[m
             <br/>[m
[31m-            <label for="amount">[m
[32m+[m[32m            <label>[m
             Amount Spend:[m
             <input  id="amount" [m
                     value={this.props.Amount} [m
[36m@@ -22,7 +22,7 @@[m [mclass Form extends React.Component {[m
                     onChange={this.props.handleInputChange} />[m
             </label>[m
             <br/>[m
[31m-            <label for="date">[m
[32m+[m[32m            <label >[m
               Date of Transaction:[m
               <input  id="date" [m
                       value={this.props.Date} [m
[1mdiff --git a/src/Modal.js b/src/Modal.js[m
[1mdeleted file mode 100644[m
[1mindex c73dbec..0000000[m
[1m--- a/src/Modal.js[m
[1m+++ /dev/null[m
[36m@@ -1,19 +0,0 @@[m
[31m-import React, { Component } from 'react'[m
[31m-import 'react-responsive-modal/styles.css';[m
[31m-[m
[31m-class Modal extends Component {[m
[31m-[m
[31m-    onClickButton = e =>{[m
[31m-        e.preventDefault()[m
[31m-        this.setState({openModal : true})[m
[31m-}[m
[31m-    render() {[m
[31m-        return ([m
[31m-            <div>[m
[31m-                <button onClick={this.onClickButton}>Click Me</button>[m
[31m-            </div>[m
[31m-        )[m
[31m-    }[m
[31m-}[m
[31m-[m
[31m-export default Modal[m
[1mdiff --git a/src/ModalInClassComponents.js b/src/ModalInClassComponents.js[m
[1mindex d98e19f..7f7ea72 100644[m
[1m--- a/src/ModalInClassComponents.js[m
[1m+++ b/src/ModalInClassComponents.js[m
[36m@@ -1,85 +1,41 @@[m
 import React,{Component} from "react";[m
[31m-import Table from './Table'[m
[31m-import Form from './Form'[m
 import 'react-responsive-modal/styles.css';[m
 import { Modal } from 'react-responsive-modal';[m
[31m-import './Table.css'[m
[32m+[m[32mimport Form from "./Form";[m
 [m
 class ModalInClassComponents extends Component {[m
 [m
[31m-    constructor(props) {[m
[31m-        super(props)[m
[31m-    [m
[31m-        this.state = {[m
[31m-            catagory: '',[m
[31m-            amount: '',[m
[31m-            date: '',[m
[31m-            expensename: '',[m
[31m-            description: '',[m
[31m-            items: [],[m
[31m-            openModal : false[m
[31m-        }[m
[31m-    }[m
[31m-  [m
[31m