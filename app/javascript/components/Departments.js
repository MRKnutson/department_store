import React from "react"

const Departments = (props) => {
    const renderDepartments = () => {
      return props.departments.map((department)=>{
        return(
        <div className = "department-container">
          <h2>Dept Name: {department.name}</h2>
          <p>Dept ID: {department.id}</p>
          <a href ={`departments/${department.id}`}>Show</a>
          <a href ={`departments/${department.id}/edit`}>Edit Department</a>
          <a href ={`departments/${department.id}`} data-method = "delete">Delete Department</a>
        </div>
       );
      });
    };
  return (
    <div>
      <div className="page-title">
        <h1>Departments From Awesome Store:</h1>
      </div>
      {renderDepartments()}
      <a className = "new-button" href = "departments/new">New Department</a>
    </div>
  )
};

export default Departments;

