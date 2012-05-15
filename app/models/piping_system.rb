class PipingSystem < ActiveRecord::Base
  attr_accessible :fitting_schedule, :name, :pipe_schedule, :project_id, :typical_tee_height, :unit_connection_size, :system_tag
  belongs_to :project
end
