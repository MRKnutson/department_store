import React from "react"

const NewDepartment = () => {
  return(
    <div>
      <h1>Add a department</h1>
      <form action ="/departments" method ="post">
        <p>Department Name:</p>
        <input name = "department[name]" />
        <button type = "submit">Add Department</button>
      </form>
      <a href = "/">Department List</a>
    </div>
  );
};

export default NewDepartment;