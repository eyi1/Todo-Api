class ChangeTodosTitle < ActiveRecord::Migration[5.2]
  def change
    rename_column :todos, :title, :name
  end
end
