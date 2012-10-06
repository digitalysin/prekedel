class Image < ActiveRecord::Base
  attr_accessible :description, :file, :item_id, :name

  belongs_to :item
  mount_uploader :file, ImageUploader
end
