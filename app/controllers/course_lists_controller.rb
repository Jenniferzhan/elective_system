class CourseListsController < ApplicationController
  def index
    @courses = Course.paginate :page => params[:page],
      :per_page => 5
  end
end
