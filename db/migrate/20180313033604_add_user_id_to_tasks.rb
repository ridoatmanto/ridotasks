class AddUserIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :id_user, :integer
  end
end
