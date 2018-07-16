json.extract! student, :id, :firstname, :lastname, :created_at, :updated_at
json.url student_url(student, format: :json)
