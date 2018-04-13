class CreateSubgoals < ActiveRecord::Migration[5.1]
  def change
    create_table :subgoals do |t|
      t.string :title
      t.date :deadline

      t.timestamps
    end
  end
end
