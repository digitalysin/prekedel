class Avatar < ActiveRecord::Base
  attr_accessible :image

  mount_uploader :image, AvatarUploader
end
