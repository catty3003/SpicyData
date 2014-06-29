class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.string :m_common_name
      t.string :m_genus
      t.string :m_species
      t.string :other_matrix_name
      t.string :plant_part
      t.string :storage_form
      t.string :product_form
      t.string :place_of_origin
      t.date :date_of_harvest
      t.float :relative_humidity_during_harvest
      t.float :temperature_during_harvest
      t.string :pre_treatment
      t.date :sampling_date
      t.float :m_ph
      t.float :m_aw
      t.float :humidity_of_matrix
      t.float :ash
      t.float :sand
      t.float :lipids
      t.string :further_ingredients
      t.text :m_comment
      t.integer :reference_id
      t.integer :user_id

      t.timestamps
    end
  end
end
