class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.decimal :cfu_initial
      t.string :cfu_initial_unit
      t.boolean :detectability
      t.decimal :cfu_detected
      t.string :cfu_detected_unit
      t.text :r_comment

      t.timestamps
    end
  end
end
