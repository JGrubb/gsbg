class AddImagesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image, :string, array: true
  end
end
