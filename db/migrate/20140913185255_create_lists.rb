class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :Name
      t.integer :position

      t.timestamps
    end
  end
end
