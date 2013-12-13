class AddColorsSizesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :colors, :string, array: true
    add_column :products, :sizes, :string, array: true
  end
end
