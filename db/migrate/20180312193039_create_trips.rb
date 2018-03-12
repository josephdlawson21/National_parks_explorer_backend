class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.belongs_to :user
      t.belongs_to :park

      t.timestamps
    end
  end
end
