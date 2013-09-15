class AddDeletedCancelledToShows < ActiveRecord::Migration
  def change
    add_column :shows, :deleted, :boolean
    add_column :shows, :cancelled, :boolean
  end
end
