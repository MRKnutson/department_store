import React from "react"

const Comment = (props) => {
  return (
    <div>
      <div style ={{margin: "10px", border: "1px solid black"}}>
        <h1>Item: {props.item.name}</h1>
        <h3>Author: {props.comment.name}</h3>
        <p>{props.comment.body}</p>
        <p>Comment ID: {props.comment.id}</p>
      </div>
      <div  style ={{margin: "10px", border: "1px solid black"}}>
        <a href = {`/items/${props.item.id}/comments`}>All Comments</a>
        <a href = {`/items/${props.item.id}/comments/${props.comment.id}/edit`}>Edit Comment</a>
        <a data-method = "delete" href = {`/items/${props.item.id}/comments/${props.comment.id}`}>Delete Comment</a>
      </div>
    </div>
  );
};

export default Comment;