class AddStatusToSubgoal < ActiveRecord::Migration[5.1]
  def change
    add_column :subgoals, :status, :boolean
  end
end
