import React from "react"

const NewComment = (props) => {
  return(
    <div>
      <h1>Department: {props.department.name}</h1>
      <h2>Item: {props.item.name}</h2>
      <h3>New Comment Form here:</h3>
      <form action = {`/items/${props.item.id}/comments`} method ="post">
        <p>Author:</p>
        <input name = "comment[name]" />
        <p>Comment:</p>
        <textarea name = "comment[body]" />
        <button type = "submit">Submit New Comment</button>
      </form>
    </div>
  );
};

export default NewComment;