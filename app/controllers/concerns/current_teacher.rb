 module CurrentTeacher
   
   extend ActiveSupport::Concern
   private
def current_teacher
     @teacher = Teacher.find(session[:teacher_id])
    rescue ActiveRecord::RecordNotFound
     @teacher = Teacher.create
     session[:teacher_id] = @teacher.id
    end
 end
