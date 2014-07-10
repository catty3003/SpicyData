class Spiking < ActiveRecord::Base
	belongs_to :reference
	has_many :spikingparams, dependent: :destroy
	has_many :contaminationstatuses

  accepts_nested_attributes_for :spikingparams, 
  		allow_destroy: true, 
      :reject_if => :all_blank

end
