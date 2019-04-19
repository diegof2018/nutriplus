json.extract! food_planning, :id, :patient_id, :date_start, :date_finish, :created_at, :updated_at
json.url food_planning_url(food_planning, format: :json)
