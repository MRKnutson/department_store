import React from "react"

const Departments = (props) => {
    const renderDepartments = () => {
      return props.departments.map((department)=>{
        return(
        <div>
          <h1>Dept Name: {department.name}</h1>
          <p>Dept ID: {department.id}</p>
          <a href ={`departments/${department.id}`}>Show</a>
          <a href ={`departments/${department.id}/edit`}>Edit Department</a>
        </div>
       );
      });
    };
  return (
    <div>
      {renderDepartments()}
      <a href = "departments/new">New Department</a>
    </div>
  )
};

export default Departments;

