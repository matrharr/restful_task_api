class CreateUserTasks < ActiveRecord::Migration
  def change
    create_table :user_tasks do |t|
      t.integer :user_id
      t.integer :task_id
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
