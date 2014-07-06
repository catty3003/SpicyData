class CreateAdminmatrixnames < ActiveRecord::Migration
  def change
    create_table :adminmatrixnames do |t|
      t.string :m_common_name

      t.timestamps
    end
  end
end
