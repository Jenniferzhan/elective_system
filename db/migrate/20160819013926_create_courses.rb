class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :course_title
      t.string :teacher

      t.timestamps
    end
  end
end
