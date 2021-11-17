import React from "react"

const Department = (props) => {
  return(
    <div>
      <h1>{props.department.name}</h1>
      <p>ID: {props.department.id}</p>
    </div>
  )
};

export default Department;