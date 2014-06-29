class Spiking < ActiveRecord::Base
	belongs_to :reference
	has_many :spikingparams
	has_many :contaminationstatuses
end
