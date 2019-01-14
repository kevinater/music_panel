class Cohort < ApplicationRecord
 belongs_to :course, dependent: :destroy
 has_and_belongs_to_many :students
 has_and_belongs_to_many :instructors

 accepts_nested_attributes_for :students
end
