import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import PawsIndexContainer from '../containers/PawsIndexContainer.js'

export const App = (props) => {
  return (
    <BrowserRouter>
    <Switch>
    <Route exact path="/" component={PawsIndexContainer} />
    </Switch>
    </BrowserRouter>
  )
}

export default App
