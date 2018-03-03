class Task < ApplicationRecord
  validates :task_name, presence: true, length: { minimum: 5  }
  validates :description, presence: true, length: { minimum: 10  }
  enum priority: [:high, :medium, :low]
end
