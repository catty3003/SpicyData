class CreateTenacities < ActiveRecord::Migration
  def change
    create_table :tenacities do |t|
      t.integer :total_sample_number
      t.integer :inoculum_concentration_initial
      t.string :i_concentration_unit
      t.integer :reference_id
      t.integer :user_id

      t.timestamps
    end
  end
end
