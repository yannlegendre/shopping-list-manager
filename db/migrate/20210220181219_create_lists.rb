class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.boolean :active

      t.timestamps
    end
  end
end
