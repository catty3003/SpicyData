class Spikingparam < ActiveRecord::Base
	belongs_to :spiking
	validates :spik_weight_of_sample_unit, :carrier_substance, :carrier_fluid, 
						:spik_duration_unit, :spik_comment, presence: true
	validates :spik_weight_of_sample, :cfu_of_inoculum_per_ml, :cfu_per_gram_spice_spiked, 
						:spik_duration, :numericality => { :greater_than_or_equal_to => 0 }, presence: true
end
