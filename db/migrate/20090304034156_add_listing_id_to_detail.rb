class AddListingIdToDetail < ActiveRecord::Migration
  def self.up
    add_column :details, :listing_id, :integer
  end

  def self.down
    remove_column :details, :listing_id
  end
end
