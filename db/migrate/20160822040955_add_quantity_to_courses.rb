class AddQuantityToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :quantity, :integer, default: 1
  end
end
