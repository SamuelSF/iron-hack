class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :venue
      t.string :city
      t.datetime :date
      t.text :description
      t.float :price

      t.timestamps null: false
    end
  end
end
