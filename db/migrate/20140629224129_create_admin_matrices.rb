class CreateAdminMatrices < ActiveRecord::Migration
  def change
    create_table :admin_matrices do |t|
      t.string :name

      t.timestamps
    end
  end
end
