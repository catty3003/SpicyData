class CreateAdminagentspecs < ActiveRecord::Migration
  def change
    create_table :adminagentspecs do |t|
      t.string :a_species

      t.timestamps
    end
  end
end
