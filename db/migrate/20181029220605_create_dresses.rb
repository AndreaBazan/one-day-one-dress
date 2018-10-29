class CreateDresses < ActiveRecord::Migration[5.2]
  def change
    create_table :dresses do |t|
      t.references :user, foreign_key: true
      t.integer :price
      t.string :size
      t.integer :heigth

      t.timestamps
    end
  end
end
