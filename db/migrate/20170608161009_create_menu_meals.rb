class CreateMenuMeals < ActiveRecord::Migration
  def change
    create_table :menu_meals do |t|
      t.references :menu, index: true, foreign_key: true
      t.references :meal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
