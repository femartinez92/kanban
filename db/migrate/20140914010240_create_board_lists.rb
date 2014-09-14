class CreateBoardLists < ActiveRecord::Migration
  def change
    create_table :board_lists do |t|
      t.integer :board_id
      t.integer :list_id

      t.timestamps
    end
  end
end
