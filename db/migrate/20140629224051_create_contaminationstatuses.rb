class CreateContaminationstatuses < ActiveRecord::Migration
  def change
    create_table :contaminationstatuses do |t|
      t.float :cfu_natural_contamination
      t.string :cfu_natural_contamination_unit
      t.integer :matrix_id
      t.integer :agent_id
      t.integer :tenacity_id
      t.integer :treatment_id
      t.integer :spiking_id
      t.integer :samplepreparation_id
      t.integer :detection_id
      t.integer :reference_id
      t.integer :user_id
      t.integer :result_id

      t.timestamps
    end
  end
end
