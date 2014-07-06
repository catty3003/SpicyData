class CreateAdminmatrixproductforms < ActiveRecord::Migration
  def change
    create_table :adminmatrixproductforms do |t|
      t.string :product_form

      t.timestamps
    end
  end
end
