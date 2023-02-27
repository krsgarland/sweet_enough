class AddRecipeIngredientsToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :recipe_ingredients, :string
  end
end
