class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :parkCode
      t.string :state
      t.string :image
      t.string :designation
      t.string :latLong
      t.string :description
      t.timestamps
    end
  end
end
