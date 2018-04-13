class CreateJourneys < ActiveRecord::Migration[5.1]
  def change
    create_table :journeys do |t|
      t.string :goal
      t.date :deadline

      t.timestamps
    end
  end
end
