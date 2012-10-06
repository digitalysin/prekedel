class Item < ActiveRecord::Base
  attr_accessible :category_id, :description, :status, :title, :user_id

  belongs_to :category
  belongs_to :user

  has_many :images
end
