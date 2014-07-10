class CreateTenacityparams < ActiveRecord::Migration
  def change
    create_table :tenacityparams do |t|
      t.float :tena_duration
      t.string :tena_duration_unit
      t.integer :final_concentration
      t.string :f_concentration_unit
      t.float :decimal_reduction
      t.text :tena_comment
      t.integer :tenacity_id

      t.timestamps
    end
  end
end
