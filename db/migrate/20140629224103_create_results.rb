class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :cfu_initial
      t.string :cfu_initial_unit
      t.boolean :detectability
      t.integer :cfu_detected
      t.string :cfu_detected_unit
      t.text :r_comment

      t.timestamps
    end
  end
end
