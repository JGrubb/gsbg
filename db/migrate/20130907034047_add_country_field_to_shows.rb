class AddCountryFieldToShows < ActiveRecord::Migration
  def change
    add_column :shows, :country, :string, default: "USA"
  end
end
