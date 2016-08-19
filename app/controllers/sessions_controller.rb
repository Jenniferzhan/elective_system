class SessionsController < ApplicationController
  
  def new
    puts "******************"
  end

  def create
    puts "star, nice to meet you *****************"
    student = Student.find_by(name: student_params[:name])
    if student 
      session[:user_id] = student.id
      redirect_to course_lists_index_path
    else
      flash.now[:login_error] = "invalid username or password"
      render "new"
    end
  end

  private
  def student_params
    params.require(:session).permit(:name, :password)
  end


  #def new
  #end

  #def create
    #teacher = Teacher.find_by(name: teacher_params[:name]).try(:authenticate, teacher_params[:password])
    #if teacher
      #render teachers
    #else
      #flash.now[:login_error] = "invalid username or password"
      #render "new"
    #end
  #end

  #private
  #def teacher_params
    #params.require(:session).permit(:name, :password)
  #end
end
