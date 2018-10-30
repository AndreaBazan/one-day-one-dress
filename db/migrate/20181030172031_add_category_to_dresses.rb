class AddCategoryToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :category, :string
  end
end
