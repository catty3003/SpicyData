class CreateAdmindetectiontypes < ActiveRecord::Migration
  def change
    create_table :admindetectiontypes do |t|
      t.string :detection_method_type

      t.timestamps
    end
  end
end
