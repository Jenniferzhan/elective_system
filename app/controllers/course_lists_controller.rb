class CourseListsController < ApplicationController
  def index
<<<<<<< HEAD
    @courses = Course.paginate :page => params[:page],
      :per_page => 5
<<<<<<< HEAD
    @courses = Course.paginate(page: params[:page], perpage: 5)
=======
=======
    @courses = Course.paginate(page: params[:page], perpage: 5)
>>>>>>> dec7d54... The system has finished
>>>>>>> cddd5d8d8b71a86d48195d53a4155a0e8a604eb8
  end
end
