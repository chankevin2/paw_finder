import React, { Component } from "react";
import { Link } from "react-router-dom";
import ReactDOM from "react-dom";


const PawsIndexContainer = props => {
      return(
        <div className="petTypeContainer">
              Take home a pet today!
              <Link to="/pets/dog">
                <img src="https://img.icons8.com/color/48/000000/dog.png"/>
              </Link>
              <Link to="/pets/cats">
                <img src="https://img.icons8.com/wired/64/000000/cat.png"/>
              </Link>
          </div>
      )
}


export default PawsIndexContainer
