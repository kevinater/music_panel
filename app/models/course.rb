class Course < ApplicationRecord
  has_and_belongs_to_many :cohorts

   validates :hours, presence: true, :numericality => {:greater_than => 0}
end
