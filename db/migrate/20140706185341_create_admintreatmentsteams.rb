class CreateAdmintreatmentsteams < ActiveRecord::Migration
  def change
    create_table :admintreatmentsteams do |t|
      t.string :steam

      t.timestamps
    end
  end
end
