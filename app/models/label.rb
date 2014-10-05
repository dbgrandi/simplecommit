class Label < ActiveRecord::Base
  belongs_to :project
  has_many :taggings
  has_many :issues, :through => :taggings
  
  validates_uniqueness_of :name, scope: :project
end
