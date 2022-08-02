import React, { Component } from 'react'
import { StartColor } from '../services/servicios'
export class StartComment extends Component {
    constructor(props) {
        super(props)

        this.state = {}
    }
    render() {
        if (this.props.index > this.props.userRaiting) {
            // estrella sin color
            return <i onClick={(e) => {this.props.onClickStar(this.props.index)}} className={`fa fa-star-o starColor cursorStar`} aria-hidden="true"></i>
        } else {
            // estrella de color
            return <i onClick={(e) => {this.props.onClickStar(this.props.index)}} className={`fa fa-star starColor cursorStar`} aria-hidden="true"></i>
        }

    }
}

export default StartComment