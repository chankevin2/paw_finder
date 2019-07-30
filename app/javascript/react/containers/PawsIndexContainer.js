import React, { Component } from "react"
import { Link } from "react-router-dom"

class PawsIndexContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      paws: []
    }
  }
  render(){
    return(
      <div>
      <Link to="/dogs">Search for Dogs </Link>
      <Link to="/cats">Search for Cats </Link>
      </div>
    )
  }

}

export default PawsIndexContainer
