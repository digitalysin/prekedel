class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  attr_accessible :username, :email, :password, :password_confirmation
  attr_accessible :first_name, :last_name

  validates_presence_of :username, :email, :password, :password_confirmation
  validates_uniqueness_of :username, :email
  validates_confirmation_of :password

  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  has_many :items
  has_many :phones
end
