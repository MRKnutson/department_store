import React from "react"

const EditComment = (props) => {
  return(
    <div>
      <h1>Edit Comment for {props.item.name}</h1>
      <form action ={`/items/${props.item.id}/comments/${props.comment.id}`} method = "post">
        <input type="hidden" name= "_method" value="patch"/>       
        <p>Author:</p>
        <input defaultValue={props.comment.name} name ="comment[name]"/>
        <p>Comment:</p>
        <textarea defaultValue={props.comment.body} name ="comment[body]"/>
        <button type = "submit">Submit Comment Edits</button>
      </form>
      <a href={`/items/${props.item.id}/comments`}>Back to all comments</a>
    </div>
  )
};

export default EditComment

