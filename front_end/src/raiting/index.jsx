import React, { Component } from 'react'
import { StartColor } from '../services/servicios'
export class Raiting extends Component {
    constructor(props) {
      super(props)
    
      this.state = {}
    }
  render() {
    if(this.props.index > this.props.raiting) {
        // estrella sin color
        return <i className={`fa fa-star-o ${StartColor(this.props.componente, this.props.raiting)}`} aria-hidden="true"></i>
      }else{
        // estrella de color
        return <i className={`fa fa-star ${StartColor(this.props.componente, this.props.raiting)}`} aria-hidden="true"></i>
      }
    
  }
}

export default Raiting