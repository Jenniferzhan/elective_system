require 'roo'
class Course < ApplicationRecord
  has_many :line_items
  has_many :students, through: :line_items
  MAXIMUM = 5

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |course|
        csv << course.attributes.values_at(*column_names) 
      end
    end
  end

  def self.import(file)
    dirname = "#{Rails.root}/tmp/upload" 
    FileUtils.mkdir_p(dirname) unless File.exist?(dirname)
    puts "****************** star520 "
    puts file.inspect
    filename = file.original_filename          
    if File.exist?("#{dirname}/#{filename}")
      basename = File.basename(filename, ".*")  # ".xlsx"
      extname = File.extname(filename)
      i = 0 
      begin
        i += 1
        filename = "#{basename}-#{i.to_s}#{extname}"
      end while File.exist?("#{dirname}/#{filename}")
    end 
    File.open("#{dirname}/#{filename}","wb") do |f| 
      f.write(file.read)
    end 
    filename = "#{dirname}/#{filename}"

    s = Roo::Spreadsheet.open(file)
     (2..s.last_row).each do |i|    
       course_title = s.cell(i,'B')
       teacher = s.cell(i,'C')
       quantity = s.cell(i,'D')
       Course.create(course_title: course_title, teacher: teacher, quantity: quantity)
     end

  end

  def self.search(search)          
    if search
      where('course_title LIKE ?', "%#{search}%")
    end 
  end 

end
