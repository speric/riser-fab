class AddSystemTagToPipingSystems < ActiveRecord::Migration
  def change
  	add_column :piping_systems, :system_tag, :string, :null => true
  end
end
