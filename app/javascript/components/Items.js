import React from "react"

const Items = (props) => {
  const renderItems = () => {
    return props.items.map((item) => {
      return (
        <div className="department-container">
          <h4>{item.name}: {item.price}</h4>
          <p>item id: {item.id}</p>
          <a href = {`/departments/${props.department.id}/items/${item.id}`}>Item Details</a>
          <a href = {`/departments/${props.department.id}/items/${item.id}/edit`}>Edit Item</a>
          <a data-method = "delete" href = {`/departments/${props.department.id}/items/${item.id}`}>Delete Item</a>
        </div>
      )
    })
  };
  return (
    <div>
      <h1>Department: {props.department.name}</h1>
      <p>Dept ID: {props.department.id}</p>
      <h3>Items available in this department:</h3>
      <a href="/departments">Department List</a>
      <a href={`/departments/${props.department.id}/items/new`}>Add New Item</a>
      {renderItems()}
    </div>
  );
};

export default Items