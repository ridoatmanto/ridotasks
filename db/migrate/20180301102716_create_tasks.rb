class CreateTasks < ActiveRecord::Migration[5.1]
  def up
    create_table :tasks do |t|
      t.string :task_name
      t.text :description
      t.datetime :due_date
      t.boolean :status, default: false

      t.timestamps
    end
  end 
  
  def down 
  	drop_table :tasks
  end
end
