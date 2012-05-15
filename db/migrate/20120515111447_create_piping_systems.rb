class CreatePipingSystems < ActiveRecord::Migration
  def change
    create_table :piping_systems do |t|
      t.string :name
      t.string :pipe_schedule
      t.string :fitting_schedule
      t.integer :typical_tee_height
      t.integer :unit_connection_size
      t.integer :project_id

      t.timestamps
    end
  end
end
