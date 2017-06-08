class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.references :recipe, index: true, foreign_key: true
      t.references :menu, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
