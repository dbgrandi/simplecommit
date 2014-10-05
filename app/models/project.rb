class Project < ActiveRecord::Base
  has_many :collaborators
  has_many :users, :through => :collaborators
  has_many :labels
end
