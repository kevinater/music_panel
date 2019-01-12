class Student < ApplicationRecord
  has_and_belongs_to_many :cohorts

  enum education: {High_school: 0, College: 1, Masters: 2, PHD: 3}
  validates :first_name, presence: true, length: {maximum: 20}
  validates :last_name, presence: true, length: {maximum: 20}
  validates :age, presence: true, :numericality => {:less_than => 150}

end
