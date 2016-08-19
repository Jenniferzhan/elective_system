class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.references :course, foreign_key: true
      t.belongs_to :student, foreign_key: true

      t.timestamps
    end
  end
end
