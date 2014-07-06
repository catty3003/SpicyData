class CreateAdmintreatmentopticals < ActiveRecord::Migration
  def change
    create_table :admintreatmentopticals do |t|
      t.string :optical

      t.timestamps
    end
  end
end
