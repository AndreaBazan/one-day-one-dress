class AddPhotoToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :photo, :string
  end
end
