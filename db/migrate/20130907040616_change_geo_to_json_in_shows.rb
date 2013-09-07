class ChangeGeoToJsonInShows < ActiveRecord::Migration
  def up
    remove_column :shows, :geo
    add_column :shows, :geo, :json
  end

  def down
    remove_column :shows, :geo
    add_column :shows, :geo, :string
  end
end
