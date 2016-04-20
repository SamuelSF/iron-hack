class AddFavoriteToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :favorite, :boolean
    reversible do |direction|
        direction.up {Contact.update_all(favorite: false) }
    end
  end
end
