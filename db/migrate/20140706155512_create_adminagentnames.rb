class CreateAdminagentnames < ActiveRecord::Migration
  def change
    create_table :adminagentnames do |t|
      t.string :a_common_name

      t.timestamps
    end
  end
end
