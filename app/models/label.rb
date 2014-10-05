class Label < ActiveRecord::Base
  belongs_to :project
  has_many :taggings
  has_many :issues, :through => :taggings
end
