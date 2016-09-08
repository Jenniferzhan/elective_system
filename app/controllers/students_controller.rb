class StudentsController < ApplicationController
  include CurrentStudent

  before_action :set_student, only: [:show, :edit, :update, :destroy]


  def me
    @student = current_student
    if session[:student_id].blank?
      redirect_to sessions_create_path
    end
  end

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit

  def create
    @student = Student.create(student_params)
    if @student.save
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
      puts "**************"      
      redirect_to :sessions_new
    else
      redirect_to :signup 
<<<<<<< HEAD
<<<<<<< HEAD
      redirect_to :sessions_new
    else
      redirect_to :signup_url
=======
=======
      redirect_to :sessions_new
    else
      redirect_to :signup_url
>>>>>>> dec7d54... The system has finished
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
=======
      redirect_to :sessions_new
    else
      redirect_to :signup_url
>>>>>>> dec7d54... The system has finished
    end
  end
  # POST /students
  # POST /students.json

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:name, :password, :password_confirmation, :picture, :email)
  end
end
