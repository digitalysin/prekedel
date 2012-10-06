class Phone < ActiveRecord::Base
  attr_accessible :number, :user_id

  belongs_to :user
end
