class SessionsController < ApplicationController

  def new
  end

  def create
<<<<<<< HEAD
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
<<<<<<< HEAD
=======
>>>>>>> dec7d54... The system has finished
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
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
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
  end


  def destroy
    session[:student_id] = nil
    session[:teacher_id] = nil
    redirect_to root_url, notice:"logged out"
=======
>>>>>>> dec7d54... The system has finished
  end

  private
  def student_params
    params.require(:session).permit(:name, :password, :picture)
<<<<<<< HEAD
  end
  def teacher_params
    params.require(:session).permit(:name, :password, :picture)
=======
>>>>>>> dec7d54... The system has finished
  end

  end

<<<<<<< HEAD
<<<<<<< HEAD

=======
>>>>>>> dec7d54... The system has finished
=======

>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
end
