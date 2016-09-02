class PasswordResetsController < ApplicationController

  def new
  end

  def create
    @student = Student.find_by(email: params[:password_set][:email])
    @teacher = Teacher.find_by(email: params[:password_set][:email])
    if @student
      @student.password = params[:password_set][:password]
      @student.save
      redirect_to "/"
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find_by(reset_digest: params[:id])
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
