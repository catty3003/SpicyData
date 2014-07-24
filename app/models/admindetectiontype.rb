class Admindetectiontype < ActiveRecord::Base
	has_many :detections
	validates :detection_method_type, presence: true
end
