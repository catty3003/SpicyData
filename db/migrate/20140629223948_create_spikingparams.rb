class CreateSpikingparams < ActiveRecord::Migration
  def change
    create_table :spikingparams do |t|
      t.decimal :spik_weight_of_sample
      t.string :spik_weight_of_sample_unit
      t.decimal :cfu_of_inoculum_per_ml
      t.decimal :cfu_per_gram_spice_spiked
      t.string :carrier_substance
      t.string :carrier_fluid
      t.decimal :spik_duration
      t.string :spik_duration_unit
      t.text :spik_comment
      t.integer :spiking_id

      t.timestamps
    end
  end
end
