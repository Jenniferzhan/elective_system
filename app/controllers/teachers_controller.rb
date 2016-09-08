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
<<<<<<< HEAD
  def new
    @teacher = Teacher.new
  end
=======

>>>>>>> dec7d54... The system has finished



  def create
    @teacher = Teacher.new(teacher_params)
    @teacher = Teacher.create(teacher_params)
    if @teacher.save
      redirect_to :sessions_new
    else
<<<<<<< HEAD
      redirect_to :signup 
=======
      redirect_to :signup_path
>>>>>>> dec7d54... The system has finished
    end
  end
private

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher = Teacher.create(teacher_params)
    if @teacher.save
      redirect_to :sessions_new
    else
      redirect_to :signup_path
    end
  end


<<<<<<< HEAD
=======

>>>>>>> dec7d54... The system has finished
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def teacher_params
<<<<<<< HEAD
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation, :picture)
<<<<<<< HEAD
=======
>>>>>>> dec7d54... The system has finished
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
    params.require(:teacher).permit(:name, :password, :password_confirmation)
  end
end
