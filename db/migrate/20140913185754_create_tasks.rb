class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :progress
      t.decimal :menhours

      t.timestamps
    end
  end
end
