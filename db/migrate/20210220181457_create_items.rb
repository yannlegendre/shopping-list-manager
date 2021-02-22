class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.boolean :checked, null: false, default: false
      t.integer :quantity
      t.references :ingredient, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
