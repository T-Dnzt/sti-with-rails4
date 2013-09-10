class CreateTribes < ActiveRecord::Migration
  def change
    create_table :tribes do |t|
      t.string :name

      t.timestamps
    end
  end
end
