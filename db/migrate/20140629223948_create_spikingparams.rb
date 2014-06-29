class CreateSpikingparams < ActiveRecord::Migration
  def change
    create_table :spikingparams do |t|
      t.float :spik_weight_of_sample
      t.string :spik_weight_of_sample_unit
      t.float :cfu_of_inoculum_per_ml
      t.float :cfu_per_gram_spice_spiked
      t.string :carrier_substance
      t.string :carrier_fluid
      t.float :spik_duration
      t.string :spik_duration_unit
      t.text :spik_comment

      t.timestamps
    end
  end
end
