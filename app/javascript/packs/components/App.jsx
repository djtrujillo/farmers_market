import React, { Component } from 'react'

import Button from './Button'


export default class App extends Component {
  constructor() {
    super()
    this.state = {
      count: 0
    }
  }

  handleClick = (number) => {
    const count = this.state.count += number
    this.setState({ count })
  };

  render() {
    return (
      <div>
        <h1>Count: {this.state.count}</h1>
        <Button handleClick={ this.handleClick } />
      </div>
    )
  }
}










/*var Main = React.createClass({
    render() {
        return (
            <div>
                <h1>Hello, World!</h1>
            </div>
        )
    }
})

export default Main*/
