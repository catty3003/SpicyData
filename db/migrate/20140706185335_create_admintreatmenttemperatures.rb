class CreateAdmintreatmenttemperatures < ActiveRecord::Migration
  def change
    create_table :admintreatmenttemperatures do |t|
      t.string :temperature

      t.timestamps
    end
  end
end
