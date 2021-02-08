class CreateAdditions < ActiveRecord::Migration[6.1]
  def change
    create_table :additions do |t|
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
