class AddPriorityToTasks < ActiveRecord::Migration[5.1]
  def up
    add_column :tasks, :priority, :integer, default: 0
  end

  def down
  	remove_column :tasks, :priority
  end
end
