class Floor < ActiveRecord::Base
  attr_accessible :ceiling_height, :floor_number, :project_id, :slab_thickness

  belongs_to :project
end
