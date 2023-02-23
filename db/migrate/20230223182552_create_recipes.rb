class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :category
      t.integer :yield
      t.text :directions

      t.timestamps
    end
  end
end
