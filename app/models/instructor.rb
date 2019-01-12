class Instructor < ApplicationRecord
  has_and_belongs_to_many :cohorts

  enum education: {High_school: 0, College: 1, Masters: 2, PHD: 3}
  validates :age, presence: true, :numericality => {:less_than => 150}
  validates :salary, presence: true, :numericality => {:greater_than => 0}
end
