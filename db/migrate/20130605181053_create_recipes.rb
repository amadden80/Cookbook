class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :instructions
      t.string :name
      t.integer :serving_size
      t.text :img_url
      t.string :course
      t.integer :cook_time
      t.belongs_to :cookbook
      t.timestamps
    end
  end
end
