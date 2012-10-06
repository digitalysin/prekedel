class Category < ActiveRecord::Base
  has_ancestry
  attr_accessible :active, :name, :parent_id

  validates_presence_of :name
  scope(:active, where(active: true))
  class << self
    def category_trees
      active.each { |c| c.ancestry = c.ancestry.to_s + (c.ancestry != nil ? "/" : '') + c.id.to_s }
      .sort {|x,y| x.ancestry <=> y.ancestry }
      .map { |c| ["- " * (c.depth - 1) + c.name,c.id] }
      .unshift(["-- none --", nil])
    end
  end
end
