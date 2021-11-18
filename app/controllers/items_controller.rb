class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # C

  # R
  def index
    render component: "Items", props: { department: @department, items: @department.items }
  end

  # U

  # D

  private

  def set_department
    @department = Department.find(params[:department_id])
  end

  def set_item
    @item = @department.items.find(params[:id])
  end


end
