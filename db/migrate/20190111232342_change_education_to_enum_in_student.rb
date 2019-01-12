class ChangeEducationToEnumInStudent < ActiveRecord::Migration[5.2]

  def up
    change_column :students, :education, :integer
  end

  def down
    change_column :students, :education, :string
  end
end
