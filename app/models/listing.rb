class Listing < ActiveRecord::Base
  has_many :details, :dependent=>:destroy
  has_many :photos, :dependent=>:destroy

end
