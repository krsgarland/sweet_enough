class AddImagePathToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :image_path, default: "https://img.favpng.com/18/10/10/fruit-logo-food-recipe-business-png-favpng-HUvujmv3a23dftJfpeGxyFeaq.jpg"
  end
end
