class CreateAdmintreatmentmechanicals < ActiveRecord::Migration
  def change
    create_table :admintreatmentmechanicals do |t|
      t.string :mechanical

      t.timestamps
    end
  end
end
