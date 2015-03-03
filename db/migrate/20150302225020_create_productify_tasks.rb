class CreateProductifyTasks < ActiveRecord::Migration
  def change
    create_table :productify_tasks do |t|
      t.string :content
      t.references :productify_list, index: true

      t.timestamps null: false
    end
    add_foreign_key :productify_tasks, :productify_lists
  end
end
