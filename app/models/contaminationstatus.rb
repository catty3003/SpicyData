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
  validates :cfu_natural_contamination, :numericality => { :less_than_or_equal_to => 100 }, presence: true
  validates :cfu_natural_contamination_unit, presence: true
  validates :matrix_id, :agent_id, :tenacity_id, :treatment_id, :spiking_id, :samplepreparation_id, :detection_id, :reference_id, :user_id, :result_id, :numericality => { :greater_than => 0 }, presence: true

  belongs_to :adminmatrixname
  belongs_to :user

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
