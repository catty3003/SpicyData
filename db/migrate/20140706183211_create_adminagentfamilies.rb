class CreateAdminagentfamilies < ActiveRecord::Migration
  def change
    create_table :adminagentfamilies do |t|
      t.string :a_family

      t.timestamps
    end
  end
end
