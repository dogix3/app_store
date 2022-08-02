import React, { Component } from 'react'
import logo from "../Amazon_appstore.png"

export class NavBar extends Component {
  render() {
    return (
      <nav className="navbar navbar-dark bg-dark">
        <div className="container-fluid">
          <a className="navbar-brand">
            <img className='navLogo' src={logo} alt="logo" />
          </a>
          <form className="d-flex">
            <input className="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
            <button className="btn btn-warning" type="submit"><i className="fa fa-search" aria-hidden="true"></i></button>
          </form>
        </div>
      </nav>
    )
  }
}

export default NavBar