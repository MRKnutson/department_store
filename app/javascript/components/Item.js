import React from "react"

const Item = (props) => {
  return (
    <div style ={{margin: "10px", border: "1px solid black"}}>
      <h1>Department: {props.department.name}</h1>
      <a href ={`/departments`}>Department List</a>
      <a href ={`/departments/${props.department.id}/items`}>Item List</a>
      <h2>Item: {props.item.name}</h2>
      <p>Price: ${props.item.price}</p>
      <p>ID: {props.item.id}</p>
    </div>
  );
};

export default Item;