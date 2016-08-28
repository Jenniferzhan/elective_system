class ApplicantsController < ApplicationController

  def new
    @student = Student.new
    @teacher = Teacher.new
  end

  

  end
