class AddStatusToJourney < ActiveRecord::Migration[5.1]
  def change
    add_column :journeys, :status, :boolean
  end
end
