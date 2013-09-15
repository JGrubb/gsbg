class AddThumbnailToPressItems < ActiveRecord::Migration
  def change
    add_column :press_items, :thumbnail, :string
  end
end
