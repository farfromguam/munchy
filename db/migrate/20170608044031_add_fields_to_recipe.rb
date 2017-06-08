class AddFieldsToRecipe < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.text :directions
      t.integer :time_prep
      t.integer :time_cook
      t.integer :time_cleanup
    end
  end
end
