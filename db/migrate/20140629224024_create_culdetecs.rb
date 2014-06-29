class CreateCuldetecs < ActiveRecord::Migration
  def change
    create_table :culdetecs do |t|
      t.string :medium
      t.string :agar
      t.float :incubation_duration
      t.string :incubation_duration_unit
      t.string :incubation_temp
      t.integer :sample_volume_per_disc
      t.string :medium_volume_per_disc
      t.integer :detection_id

      t.timestamps
    end
  end
end
