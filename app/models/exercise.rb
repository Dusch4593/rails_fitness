class Exercise < ApplicationRecord
  has_many :routine_exercises
  has_many :routines, through: :routine_exercises
  accepts_nested_attributes_for :routine_exercises, :reject_if => proc { |r_e| r_e[:sets].blank? }
end
