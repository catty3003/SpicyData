class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.integer :adminmatrixname_id
      t.integer :adminmatrixgenu_id
      t.integer :adminmatrixspec_id
      t.string :other_matrix_name
      t.integer :adminmatrixplantpart_id
      t.integer :adminmatrixstorageform_id
      t.integer :adminmatrixproductform_id
      t.string :place_of_origin
      t.date :date_of_harvest
      t.decimal :relative_humidity_during_harvest
      t.decimal :temperature_during_harvest
      t.string :pre_treatment
      t.date :sampling_date
      t.decimal :m_ph
      t.decimal :m_aw
      t.decimal :humidity_of_matrix
      t.decimal :ash
      t.decimal :sand
      t.decimal :lipids
      t.string :further_ingredients
      t.text :m_comment
      t.integer :reference_id
      t.integer :user_id

      t.timestamps
    end
  end
end
