class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.references :unit, null: false, foreign_key: true
      t.integer :min_stock, null: false, default: 0
      t.boolean :shortage, null: false, default: false
      t.boolean :rotation, null: false, default: false

      t.timestamps
    end
  end
end
