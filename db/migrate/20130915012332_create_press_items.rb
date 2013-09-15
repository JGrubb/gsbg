class CreatePressItems < ActiveRecord::Migration
  def change
    create_table :press_items do |t|
      t.string :pub
      t.date :date
      t.string :link
      t.string :quote

      t.timestamps
    end
  end
end
