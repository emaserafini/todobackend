class TodoItemsController < APIController
  def create

  end


  private

  def todo_item_params
    params.require(:todo_item).permit :title, :completed, :url, :order
  end
end
