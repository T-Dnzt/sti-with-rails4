class AddTribeIdToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :tribe_id, :integer
  end
end
