class AddListingIdToPhoto < ActiveRecord::Migration
  def self.up
    add_column :photos, :listing_id, :integer
  end

  def self.down
    remove_column :photos, :listing_id
  end
end
