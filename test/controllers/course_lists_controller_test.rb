require 'test_helper'

class CourseListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get course_lists_index_url
    assert_response :success
  end

end
