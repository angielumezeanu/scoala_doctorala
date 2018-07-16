json.extract! activity, :id, :registration_year, :coordinator_id, :student_id, :status, :examination_type_id, :name, :defense_date, :comitee, :result, :remarks, :created_at, :updated_at
json.url activity_url(activity, format: :json)
