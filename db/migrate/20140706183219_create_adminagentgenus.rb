class CreateAdminagentgenus < ActiveRecord::Migration
  def change
    create_table :adminagentgenus do |t|
      t.string :a_genus

      t.timestamps
    end
  end
end
