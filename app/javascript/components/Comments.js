import React from "react"

const Comments = (props) => {
  const renderComments = () => {
    return props.comments.map((comment) => {
      return (
        <div className="department-container">
          <h4>Author:{comment.name}</h4>
          <p>{comment.body}</p>
          <p>Comment id: {comment.id}</p>
          <a href = {`/items/${props.item.id}/comments/${comment.id}`}>Comment Details</a>
          <a href = {`/items/${props.item.id}/comments/${comment.id}/edit`}>Edit Comment</a>
          <a data-method = "delete" href = {`/items/${props.item.id}/comments/${comment.id}`}>Delete Comment</a>
        </div>
      )
    })
  };
  return (
    <div>
      <h1>Item: {props.item.name}</h1>
      <p>Dept ID: {props.item.id}</p>
      <h3>Comments related to this item:</h3>
      <a href="/items">Comment List</a>
      <a href={`/items/${props.item.id}/comments/new`}>Add New Comment</a>
      {renderComments()}
    </div>
  );
};

export default Comments;