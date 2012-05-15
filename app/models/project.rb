class Project < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :floors, :order => "floor_number asc"
  has_many :piping_systems
end
