class AddLastPosToList < ActiveRecord::Migration
  def change
    add_column :lists, :LastPos, :integer
  end
end
