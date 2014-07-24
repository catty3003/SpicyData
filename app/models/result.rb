class Result < ActiveRecord::Base
	has_many :contaminationstatuses, dependent: :nullify
	validates :cfu_initial, :cfu_detected, :numericality => { :less_than_or_equal_to => 100 }, presence: true
	validates :cfu_initial_unit, :cfu_detected_unit, :r_comment, :detectability, presence: true
	

	def full_res
    "ID: " + self.id.to_s + ". CfU initial: "+ self.cfu_initial.to_s + " " + self.cfu_initial_unit + ", CfU final: " + self.cfu_detected.to_s + " " + self.cfu_detected_unit
  end

end
