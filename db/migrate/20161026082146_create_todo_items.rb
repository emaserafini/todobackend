class CreateTodoItems < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_items do |t|
      t.string :title
      t.boolean :completed, default: false
      t.string :url
      t.integer :order

      t.timestamps
    end
  end
end
