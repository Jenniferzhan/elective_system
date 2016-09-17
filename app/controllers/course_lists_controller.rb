class CourseListsController < ApplicationController

  def index
    @course = Course.new
    if params[:search].present?
      @courses = Course.search(params[:search])
    else
      @courses = Course.paginate :page => params[:page],
        :per_page => 3
    end
  end

end
