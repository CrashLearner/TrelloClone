class AddCompletedAtToProductifyTasks < ActiveRecord::Migration
  def change
    add_column :productify_tasks, :completed_at, :datetime
  end
end
