class AddDescriptionToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :description, :text
  end
end
