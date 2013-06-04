class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.string :title
      t.string :cuisine
      t.text :description

      t.timestamps
    end
  end
end
