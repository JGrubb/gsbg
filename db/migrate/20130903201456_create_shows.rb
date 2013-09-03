class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :venue
      t.string :address
      t.string :city
      t.string :state
      t.string :geo
      t.date :date
      t.text :info
      t.text :info_link
      t.text :tickets_link

      t.timestamps
    end
    add_index :shows, :date
    add_index :shows, :venue
  end
end
