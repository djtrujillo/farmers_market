import React, { Component } from 'react'

const Button = ({handleClick}) => {
    return (

      <div>
        <button onClick= {() => handleClick(1)}>Plus 1</button>
        <button onClick= {() => handleClick(-1)}>Minus 1</button>
      </div>
    )
}
export default Button
