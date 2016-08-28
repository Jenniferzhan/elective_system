class CourseListsController < ApplicationController
  def index
    @courses = Course.paginate(page: params[:page], perpage: 5)
  end
end
