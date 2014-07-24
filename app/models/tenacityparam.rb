class Tenacityparam < ActiveRecord::Base
	belongs_to :tenacity
	validates :tena_duration_unit, :f_concentration_unit, :tena_comment, presence: true
	validates :tena_duration, :decimal_reduction, :numericality => { :less_than_or_equal_to => 100 }, presence: true
	validates :final_concentration, :tenacity_id, :numericality => { :greater_than => 0 }, presence: true
end
