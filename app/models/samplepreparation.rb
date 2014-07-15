class Samplepreparation < ActiveRecord::Base
	belongs_to :reference
	has_many :contaminationstatuses, dependent: :nullify

  def full_sampleprep
    "ID: " + self.samprep_short_name
  end

end
