class AddPositionToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :position, :integer
    add_column :tasks, :list_id, :integer
  end
end
