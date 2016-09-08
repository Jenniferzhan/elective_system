class Course < ApplicationRecord

  has_many :line_items
  has_many :students, through: :line_items
  MAXIMUM = 5

<<<<<<< HEAD
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |course|
        csv << course.attributes.values_at(*column_names) 
      end
    end
  end
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row| 
      Course.create! row.to_hash 
    end
  end
=======
>>>>>>> dec7d54... The system has finished
end
