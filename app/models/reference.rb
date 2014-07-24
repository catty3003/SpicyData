class Reference < ActiveRecord::Base
	has_many :agents
	has_many :matrices, dependent: :nullify
	has_many :treatments, dependent: :nullify
	has_many :spikings, dependent: :nullify
	has_many :samplepreparations, dependent: :nullify
	has_many :detections, dependent: :nullify
	has_many :tenacities, dependent: :nullify
	has_many :contaminationstatuses, dependent: :nullify
	belongs_to :adminreferencetype 
	validates :adminreferencetype_id, :year, :volume, :page_from, :page_to, :user_id, :numericality => { :greater_than => 0 }, presence: true
	validates :first_author_name, :title, :journal, :link, :r_comment, presence: true
	validates :matrix, :agent, :spiking, :treatment, :sample_prep, :detection, :tenacity, presence: true 

	def full_ref
    "ID: " + self.id.to_s + ". " + self.first_author_name + " (" + self.year.to_s + "): " + self.title
  end
  
end
