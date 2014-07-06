class CreateAdminmatrixstorageforms < ActiveRecord::Migration
  def change
    create_table :adminmatrixstorageforms do |t|
      t.string :storage_form

      t.timestamps
    end
  end
end
