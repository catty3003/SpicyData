class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :references, dependent: :nullify
 	has_many :agents, dependent: :nullify
	has_many :matrices, dependent: :nullify
	has_many :treatments, dependent: :nullify
	has_many :spikings, dependent: :nullify
	has_many :samplepreparations, dependent: :nullify
	has_many :detections, dependent: :nullify
	has_many :tenacities, dependent: :nullify
	has_many :contaminationstatuses, dependent: :nullify 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
