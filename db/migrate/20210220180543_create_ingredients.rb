class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.references :unit, null: false, foreign_key: true
      t.integer :min_stock, default: 0, null: false
      t.boolean :shortage,  default: false, null: false
      t.boolean :rotation,  default: false, null: false

      t.timestamps
    end
  end
end
