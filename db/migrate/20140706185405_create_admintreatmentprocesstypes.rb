class CreateAdmintreatmentprocesstypes < ActiveRecord::Migration
  def change
    create_table :admintreatmentprocesstypes do |t|
      t.string :process_type

      t.timestamps
    end
  end
end
