class AddStuffToProducts < ActiveRecord::Migration
  def change
    add_column :products, :beep, :string
    add_column :products, :boop, :string
    add_column :products, :meep, :string
  end
end
