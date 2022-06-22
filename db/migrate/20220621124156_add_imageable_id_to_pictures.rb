class AddImageableIdToPictures < ActiveRecord::Migration[7.0]
  def change
    add_column :pictures, :imageable_id, :integer
    add_column :pictures, :imageable_type, :string
  end
end
