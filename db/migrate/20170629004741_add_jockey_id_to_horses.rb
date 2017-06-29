class AddJockeyIdToHorses < ActiveRecord::Migration[5.1]
  def change
    add_column :horses, :jockey_id, :integer
  end
end
