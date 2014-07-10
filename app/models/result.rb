class Result < ActiveRecord::Base
	has_many :contaminationstatuses, dependent: :nullify
end
