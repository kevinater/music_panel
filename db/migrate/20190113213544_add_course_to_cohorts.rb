class AddCourseToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_reference :cohorts, :course
  end
end
