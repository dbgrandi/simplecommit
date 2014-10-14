class Project < ActiveRecord::Base
  has_many :collaborations
  has_many :users, :through => :collaborations

  has_many :labels
  has_one :easy_label, :class_name => :label
  
  validates_uniqueness_of :url
end
