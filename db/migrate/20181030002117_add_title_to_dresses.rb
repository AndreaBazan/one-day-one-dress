class AddTitleToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :title, :string
  end
end
