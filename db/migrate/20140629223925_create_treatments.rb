class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :temperature
      t.float :temperature_in_degree
      t.string :steam
      t.float :steam_in_percent
      t.string :fumigation_gas
      t.float :fumigation_gas_in_percent
      t.string :optical
      t.string :mechanical
      t.string :process_type
      t.float :t_ph
      t.float :pressure
      t.float :kgy_dose
      t.float :t_aw
      t.float :water_activity
      t.string :other_condition
      t.float :treat_duration
      t.string :treat_duration_unit
      t.text :t_comment
      t.integer :reference_id
      t.integer :user_id
      t.integer :matrix_id

      t.timestamps
    end
  end
end
