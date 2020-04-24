class CreateToyCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :toy_categories do |t|
      t.references :toy, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
