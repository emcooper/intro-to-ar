class CreateJockeys < ActiveRecord::Migration[5.1]
  def change
    create_table :jockeys do |t|
      t.string :name
    end
  end
end
