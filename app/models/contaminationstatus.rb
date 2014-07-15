class Contaminationstatus < ActiveRecord::Base
	belongs_to :agent
	belongs_to :matrix
	belongs_to :reference
	belongs_to :tenacity
	belongs_to :detection
	belongs_to :samplepreparation
	belongs_to :treatment
	belongs_to :spiking
	belongs_to :result

	accepts_nested_attributes_for :agent, 
                                :reject_if => :all_blank
 
  def dupli
    self.dup    
  end

end
