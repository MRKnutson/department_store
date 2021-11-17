import React from "react"

const Departments = (props) => {
    const renderDepartments = () => {
      return props.departments.map((department)=>{
        return(
        <div>
          <h1>Dept Name: {department.name}</h1>
          <p>Dept ID: {department.id}</p>
        </div>
       );
      });
    };
  return (
    <div>
      {renderDepartments()}
    </div>
  )
};

export default Departments;

