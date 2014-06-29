class CreateDetections < ActiveRecord::Migration
  def change
    create_table :detections do |t|
      t.string :d_short_name
      t.text :d_long_name
      t.string :d_method_validated_for_condiments
      t.text :d_process_description
      t.float :d_weight_of_sample
      t.string :d_weight_of_sample_unit
      t.string :detection_method_dilution
      t.string :detection_method_type
      t.float :duration_until_result
      t.string :duration_until_result_unit
      t.string :target_gen
      t.string :target_protein
      t.text :other_characteristic
      t.string :technique
      t.text :verification
      t.text :interpretation
      t.string :d_device_needed
      t.text :method_for_comparison
      t.string :lod
      t.string :sensitivity
      t.string :specifity
      t.string :reliability_score
      t.text :d_comment
      t.integer :reference_id
      t.integer :user_id

      t.timestamps
    end
  end
end
