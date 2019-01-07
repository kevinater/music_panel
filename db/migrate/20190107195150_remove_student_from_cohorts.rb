class RemoveStudentFromCohorts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :cohorts, :student, foreign_key: true
  end
end
