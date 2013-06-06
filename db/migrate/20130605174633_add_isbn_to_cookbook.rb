class AddIsbnToCookbook < ActiveRecord::Migration
  def change
    add_column :cookbooks, :isbn, :integer
  end
end
