class CommentsController < ApplicationController

  before_action :set_item
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # C

  def new
    render component: "NewComment", props: { department: @department }
  end

  def create
    @comment = @item.comments.new(comment_params)
    if(@comment.save)
      redirect_to [@item, @comment]
    else
      # TODO: Error handling
    end
  end

  # R
  def index
    render component: "Comments", props: { item: @item, comments: @item.comments }
  end

  def show
    render component: "Comment", props: { item: @item, comment: @comment }
  end

  # U

  def edit
    render component: "EditComment", props: { item: @item, comment: @comment }
  end

  def update
    if(@comment.update(item_params))
      redirect_to [@item, @comment]
    else
      # TODO: Error handling
    end
  end

  # D
  def destroy
    @comment.destroy
    redirect_to department_items_path(@item)
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_comment
    @comment = @item.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:name, :body)
  end

end
