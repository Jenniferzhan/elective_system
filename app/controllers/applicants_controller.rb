class ApplicantsController < ApplicationController

  def new
    @student = Student.new
    @teacher = Teacher.new
  end

  def check_name
    user = Student.find_by_name(params[:name])
    if user.nil?
      render :json =>{msg: '', success: 'OK'}
      return
    end 
    if user.present? 
      render :json =>{msg: 'already registered', success: 'NG'}
      return
    end 
  end 

end
