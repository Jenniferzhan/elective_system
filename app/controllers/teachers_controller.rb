class TeachersController < ApplicationController
  include CurrentTeacher

  def mypage
    @teacher = current_teacher
    #render text: @teacher.name
    @courses= Course.where(teacher: @teacher.name)   
    #render text: course.size
      
    if session[:teacher_id].blank?
      redirect_to sessions_create_path
    end
  end

  # GET /students
  # GET /students.json
  def index
    @teacher = Teacher.all
  end
  def new
    @teacher = Teacher.new
  end



  def create
    @teacher = Teacher.new(teacher_params)
    @teacher = Teacher.create(teacher_params)
    if @teacher.save
      redirect_to :sessions_new
    else
      redirect_to :signup 
    end
  end
private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation, :picture)
  end
end
