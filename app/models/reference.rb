class Reference < ActiveRecord::Base
	has_and_belongs_to_many :agents
	has_many :matrices, dependent: :nullify
	has_many :treatments, dependent: :nullify
	has_many :spikings, dependent: :nullify
	has_many :samplepreparations, dependent: :nullify
	has_many :detections, dependent: :nullify
	has_many :tenacities, dependent: :nullify
	has_many :contaminationstatuses, dependent: :nullify
	belongs_to :adminreferencetype 

	def full_ref
    self.id.to_s + ". " + self.first_author_name + " (" + self.year.to_s + "): " + self.title
  end
end
