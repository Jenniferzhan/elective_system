class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(name: student_params[:name]).try(:authenticate, student_params[:password])
    if student
      render students_path
    else
      flash.now[:login_error] = "invalid username or password"
      render "new"
    end
  end

  private
  def student_params
    params.require(:session).permit(:name, :password)
  end
end
