class Task < ApplicationRecord
  validates :task_name, presence: true, length: { minimum: 5  }
  validates :description, presence: true, length: { minimum: 10  }
  enum priority: [:high, :medium, :low]

  def self.completed
  	where(status: true)
  end

  def self.uncompleted
  	where(status: false).where.not(due_date: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day)
  end

  def self.today
  	where(status: false).where(due_date: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day)
  end


end
