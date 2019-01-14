class Course < ApplicationRecord
  has_many :cohorts

   validates :hours, presence: true, :numericality => {:greater_than => 0}
   validates :course_name, presence: true
end
