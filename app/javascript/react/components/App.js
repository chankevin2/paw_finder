import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import PawsIndexContainer from '../containers/PawsIndexContainer.js'
import PawsShowContainer from '../containers/PawsShowContainer.js'
import DogTile from './DogTile.js';
import './index.css'

export const App = (props) => {
  return (

    <BrowserRouter>
    <div className="container">
    <Switch>
    <Route exact path="/" component={PawsIndexContainer} />
    <Route exact path="/pets/dog" component={DogTile} />
    </Switch>
    </div>
    </BrowserRouter>

  )
}

export default App
