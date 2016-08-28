class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers, :force =>true do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :picture

      t.timestamps
    end
  end
end
