class Result < ActiveRecord::Base
	has_many :contaminationstatuses, dependent: :nullify

	def full_res
    "ID: " + self.id.to_s + ". CfU initial: "+ self.cfu_initial.to_s + " " + self.cfu_initial_unit + ", CfU final: " + self.cfu_detected.to_s + " " + self.cfu_detected_unit
  end

end
