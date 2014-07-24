class Culdetec < ActiveRecord::Base
	belongs_to :detection
	validates :medium, :agar, :incubation_duration_unit, :incubation_temp, :medium_volume_per_disc, presence: true
	validates :sample_volume_per_disc, :detection_id, :numericality => { :greater_than => 0 }, presence: true
	validates :incubation_duration, :numericality => { :less_than_or_equal_to => 100 }, presence: true
end
