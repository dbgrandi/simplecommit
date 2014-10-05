class Issue < ActiveRecord::Base
  has_many :taggings
  has_many :labels, :through => :taggings
end
