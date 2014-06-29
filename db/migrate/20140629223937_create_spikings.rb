class CreateSpikings < ActiveRecord::Migration
  def change
    create_table :spikings do |t|
      t.string :spik_short_name
      t.text :spik_long_name
      t.text :spik_process_description
      t.string :spik_device_needed
      t.text :pros
      t.text :cons
      t.integer :reference_id
      t.integer :user_id

      t.timestamps
    end
  end
end
