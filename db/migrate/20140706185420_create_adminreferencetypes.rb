class CreateAdminreferencetypes < ActiveRecord::Migration
  def change
    create_table :adminreferencetypes do |t|
      t.string :type_of_literatur

      t.timestamps
    end
  end
end
