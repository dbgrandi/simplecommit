class Project < ActiveRecord::Base
  has_many :collaborators
  has_many :users, :through => :collaborators
  has_many :labels
  has_one :easy_label, :class_name => :label
  
  validates_uniqueness_of :url
end
