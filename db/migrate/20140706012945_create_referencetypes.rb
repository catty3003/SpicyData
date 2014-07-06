class CreateReferencetypes < ActiveRecord::Migration
  def change
    create_table :referencetypes do |t|
      t.string :type_of_literatur

      t.timestamps
    end
  end
end
