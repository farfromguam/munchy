class AddFieldsToRecipe < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.text :directions
      t.text :time_prep
      t.text :time_cook
      t.text :time_cleanup
    end
  end
end
