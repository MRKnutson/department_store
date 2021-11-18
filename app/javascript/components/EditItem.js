import React from "react";

const editItem = (props) => {
  return (
    <div>
      <h1>Add new item to {props.department.name} department:</h1>
      <form action = {`/departments/${props.department.id}/items/${props.item.id}`} method ="post">
        <input type="hidden" name= "_method" value="patch" />
        <p>item name:</p>
        <input defaultValue = {props.item.name} name="item[name]" />
        <p>item price:</p>
        <input defaultValue = {props.item.price} name="item[price]" />
        <button type="submit">Add item</button>
      </form>
    </div>
  )
};

export default editItem;