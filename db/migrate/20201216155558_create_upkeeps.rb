class CreateUpkeeps < ActiveRecord::Migration[6.0]
  def change
    create_table :upkeeps do |t|
      t.string :task
      t.string :task_internal
      t.string :description

      t.timestamps
    end
  end
end
