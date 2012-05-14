class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.integer :floor_number
      t.integer :slab_thickness
      t.integer :ceiling_height
      t.integer :project_id

      t.timestamps
    end
  end
end
