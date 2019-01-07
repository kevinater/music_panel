class RemoveInstructorFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :cohorts, :instructor, foreign_key: true
  end
end
