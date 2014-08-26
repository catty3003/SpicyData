class Result < ActiveRecord::Base
	has_many :contaminationstatuses, dependent: :nullify
	validates :cfu_initial, :cfu_detected, numericality:true, presence: true
	validates :cfu_initial_unit, :cfu_detected_unit, :r_comment, presence: true
	

	def full_res
    "ID: " + self.id.to_s + ". CfU initial: "+ self.cfu_initial.to_s + " " + self.cfu_initial_unit + ", CfU final: " + self.cfu_detected.to_s + " " + self.cfu_detected_unit
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |result|
        csv << result.attributes.values_at(*column_names)
      end
    end
  end  

  def dupli
    self.dup    
  end
  
end
