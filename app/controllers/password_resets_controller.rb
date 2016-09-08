class PasswordResetsController < ApplicationController

  def new
  end

  def create
    @student = Student.find_by(email: params[:password_set][:email])
<<<<<<< HEAD
    @teacher = Teacher.find_by(email: params[:password_set][:email])
    if @student
      @student.password = params[:password_set][:password]
      @student.save
      redirect_to "/"
<<<<<<< HEAD
=======
>>>>>>> dec7d54... The system has finished
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
    if @student
      @student.create_reset_digest
      redirect_to edit_password_reset_url(@student)
    else
      render 'new'
    end
  end

  def edit
<<<<<<< HEAD
    @student = Student.find_by(reset_digest: params[:id])
<<<<<<< HEAD
=======
>>>>>>> dec7d54... The system has finished
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if params[:student][:password].empty? 
      @student.errors.add(:password, "can't be empty") 
      render 'edit'
    elsif @student.update_attributes(user_params) 
      puts "************************"
      flash[:success] = "Password has been reset." 
      redirect_to root_url
    else
      render 'edit'
    end
  end

private
def user_params
  params.require(:student).permit(:password, :password_confirmation)
end
 end
