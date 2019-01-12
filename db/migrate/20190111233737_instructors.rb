class Instructors < ActiveRecord::Migration[5.2]

  def up
    change_column :instructors, :education, :integer
  end

  def down
    change_column :instructors, :education, :string
  end
end