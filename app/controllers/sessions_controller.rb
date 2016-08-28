class SessionsController < ApplicationController

  def new
  end

  def create
    student = Student.find_by(name: student_params[:name])
    if student 
      session[:student_id] = student.id
      student.picture = params[:session][:picture]
      student.save
      redirect_to course_lists_index_path
    else
      flash.now[:login_error] = "invalid username or password"
      render "new"
    end


  end

  def destroy
    session[:student_id] = nil
    redirect_to root_url, notice:"logged out"
  end

  private
  def student_params
    params.require(:session).permit(:name, :password, :picture)
  end


end
