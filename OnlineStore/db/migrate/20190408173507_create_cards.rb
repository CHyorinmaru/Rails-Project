class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :desc
      t.float :price

      t.timestamps
    end
  end
end
