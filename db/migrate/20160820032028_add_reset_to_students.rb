class AddResetToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :reset_digest, :string
    add_column :students, :reset_set_at, :datetime
  end
end
