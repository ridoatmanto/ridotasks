json.extract! task, :id, :task_name, :description, :due_date, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
