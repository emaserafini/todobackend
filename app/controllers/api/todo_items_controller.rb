class API::TodoItemsController < APIController
  before_action :set_todo_item, only: [:show, :update, :destroy]

  def index
    @todo_items = TodoItem.all
  end

  def show
  end

  def create
    @todo_item = TodoItem.new(todo_item_params)
    if @todo_item.save
      render :show, status: :created
    else
      render json: @todo_item.errors, status: :unprocessable_entity
    end
  end

  def update
    if @todo_item.update(todo_item_params)
      render :show, status: :ok
    else
      render json: @todo_item.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @todo_item.destroy
    head :no_content
  end

  def delete
    TodoItem.delete_all
    head :no_content
  end


  private

  def set_todo_item
    @todo_item = TodoItem.find(params[:id])
  end

  def todo_item_params
    params.require(:todo_item).permit(:title, :completed, :url, :order)
  end
end
