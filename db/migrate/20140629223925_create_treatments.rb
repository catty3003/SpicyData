class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.integer :admintreatmenttemperature_id
      t.decimal :temperature_in_degree
      t.integer :admintreatmentsteam_id
      t.decimal :steam_in_percent
      t.integer :admintreatmentfumigation_id
      t.decimal :fumigation_gas_in_percent
      t.integer :admintreatmentoptical_id
      t.integer :admintreatmentmechanical_id
      t.integer :admintreatmentprocesstype_id
      t.decimal :t_ph
      t.decimal :pressure
      t.decimal :kgy_dose
      t.decimal :t_aw
      t.decimal :water_activity
      t.string :other_condition
      t.decimal :treat_duration
      t.string :treat_duration_unit
      t.text :t_comment
      t.integer :reference_id
      t.integer :user_id
      t.integer :matrix_id

      t.timestamps
    end
  end
end
