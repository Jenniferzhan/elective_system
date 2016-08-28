class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def index
    @teacher = Teacher.all
  end


  def create
    @teacher = Teacher.new(teacher_params)
    @teacher = Teacher.create(teacher_params)
    if @teacher.save
      redirect_to :sessions_new
    else
      redirect_to :signup_path
    end
  end


  def set_teacher
    @teacher = Student.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def teacher_params
    params.require(:teacher).permit(:name, :password, :password_confirmation)
  end
end
