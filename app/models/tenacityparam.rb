class Tenacityparam < ActiveRecord::Base
	belongs_to :tenacity
	validates :tena_duration_unit, :f_concentration_unit, :tena_comment, presence: true
	validates :tena_duration, :decimal_reduction,  presence: true
	validates :final_concentration,  :numericality => { :greater_than => 0 }, presence: true
end
