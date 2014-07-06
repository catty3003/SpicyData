class CreateAdminmatrixplantparts < ActiveRecord::Migration
  def change
    create_table :adminmatrixplantparts do |t|
      t.string :plant_part

      t.timestamps
    end
  end
end
