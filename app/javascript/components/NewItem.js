import React from "react";

const newItem = (props) => {
  return (
    <div>
      <h1>Add new item to {props.department.name} department:</h1>
      <form action = {`/departments/${props.department.id}/items`} method ="post">
        <p>item name:</p>
        <input name="item[name]" />
        <p>item price:</p>
        <input name="item[price]" />
        <button type="submit">Add item</button>
      </form>
    </div>
  )
};

export default newItem;