class Issue < ActiveRecord::Base
  belongs_to :project
  has_many :taggings
  has_many :labels, :through => :taggings
end
