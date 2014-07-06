class CreateAdminmatrixspecs < ActiveRecord::Migration
  def change
    create_table :adminmatrixspecs do |t|
      t.string :m_species

      t.timestamps
    end
  end
end
