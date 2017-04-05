json.extract! habit_list, :id, :title, :description, :habit_type, :created_at, :updated_at
json.url habit_list_url(habit_list, format: :json)
