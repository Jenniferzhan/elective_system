class CourseListsController < ApplicationController
  def index
<<<<<<< HEAD
    @courses = Course.paginate :page => params[:page],
      :per_page => 5
=======
    @courses = Course.paginate(page: params[:page], perpage: 5)
>>>>>>> dec7d54... The system has finished
  end
end
