class DropPropertiesFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :properties
  end

  def down
    add_column :products, :properties, :hstore
  end
end
