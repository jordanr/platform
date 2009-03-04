class CreateDetails < ActiveRecord::Migration
  def self.up
    create_table :details do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :details
  end
end
