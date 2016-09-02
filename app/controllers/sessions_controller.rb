class SessionsController < ApplicationController

  def new
  end

  def create
    student = Student.find_by(name: student_params[:name]).try(:authenticate, student_params[:password])
    teacher = Teacher.find_by(name: teacher_params[:name]).try(:authenticate, teacher_params[:password]) 
    if  student.present? 
      session[:student_id] = student.id
      if params[:session][:picture].present?
        student.picture = params[:session][:picture]
      end
      student.valid?
      puts "star, nice to meet you, *****************"
      puts student.errors.full_messages
      student.save
      redirect_to course_lists_index_url

    elsif teacher.present?
      session[:teacher_id] = teacher.id
      if params[:session][:picture].present?
        teacher.picture = params[:session][:picture]
      end
      teacher.save
      redirect_to mypage_path
    elsif
      flash.now[:login_error] = "invalid username or password"
      render "new"
    end
  end


  def destroy
    session[:student_id] = nil
    session[:teacher_id] = nil
    redirect_to root_url, notice:"logged out"
  end

  private
  def student_params
    params.require(:session).permit(:name, :password, :picture)
  end
  def teacher_params
    params.require(:session).permit(:name, :password, :picture)
  end

end
