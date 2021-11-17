import React from "react"

const EditDepartment = (props) => {
  return(
    <div>
      <h1>Edit department</h1>
      <form action ={`/departments/${props.department.id}`} method ="post">
        <input type ="hidden" name = "_method" value = "patch"/>
        <p>Department Name:</p>
        <input defaultValue = {props.department.name}name = "department[name]" />
        <button type = "submit">Submit Department Edits</button>
      </form>
      <a href = "/">Home</a>
    </div>
  );
};

export default EditDepartment;
