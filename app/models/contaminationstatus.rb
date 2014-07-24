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
  belongs_to :adminmatrixname

	accepts_nested_attributes_for :agent, 
                                :reject_if => :all_blank
 
  def dupli
    self.dup    
  end


  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |contaminationstatus|
        csv << contaminationstatus.attributes.values_at(*column_names)
      end
    end
  end


end
