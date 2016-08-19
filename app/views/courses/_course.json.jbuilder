json.extract! course, :id, :course_title, :teacher, :created_at, :updated_at
json.url course_url(course, format: :json)