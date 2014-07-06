class CreateAdminmatrixgenus < ActiveRecord::Migration
  def change
    create_table :adminmatrixgenus do |t|
      t.string :m_genus

      t.timestamps
    end
  end
end
