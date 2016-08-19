 module CurrentStudent
   extend ActiveSupport::Concern
   private
def current_student
     @student = Student.find(session[:student_id])
    rescue ActiveRecord::RecordNotFound
     @student = Student.create
     session[:student_id] = @student.id
    end
 end
