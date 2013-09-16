class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.hstore :properties

      t.timestamps
    end
  end
end
