class CreateSamplepreparations < ActiveRecord::Migration
  def change
    create_table :samplepreparations do |t|
      t.string :samprep_short_name
      t.text :samprep_long_name
      t.string :samprep_method_validated_for_condiments
      t.text :samprep_process_description
      t.decimal :spik_weight_of_sample
      t.string :spik_weight_of_sample_unit
      t.string :dilution_fuid
      t.string :first_dilution_ratio
      t.string :homogenize_with
      t.string :enrichment
      t.string :dna_extraction
      t.string :rna_extraction
      t.string :protein_extraction
      t.string :homogenizing_method
      t.string :cell_lysis
      t.string :applied_kit
      t.string :other_samprep_method_type
      t.string :samprep_method_type_details_text
      t.decimal :samprep_duration
      t.string :samprep_duration_unit
      t.text :samprep_comment
      t.integer :reference_id
      t.integer :user_id

      t.timestamps
    end
  end
end
