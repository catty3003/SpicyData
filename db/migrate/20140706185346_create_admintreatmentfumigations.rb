class CreateAdmintreatmentfumigations < ActiveRecord::Migration
  def change
    create_table :admintreatmentfumigations do |t|
      t.string :fumigation_gas

      t.timestamps
    end
  end
end
