json.extract! student, :id, :name, :password_digest, :created_at, :updated_at
json.url student_url(student, format: :json)