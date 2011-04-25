class HoboMigration6 < ActiveRecord::Migration
  def self.up
    add_column :category_assignements, :category_id, :integer
    add_column :category_assignements, :recipe_id, :integer

    add_index :category_assignements, [:category_id]
    add_index :category_assignements, [:recipe_id]
  end

  def self.down
    remove_column :category_assignements, :category_id
    remove_column :category_assignements, :recipe_id

    remove_index :category_assignements, :name => :index_category_assignements_on_category_id rescue ActiveRecord::StatementInvalid
    remove_index :category_assignements, :name => :index_category_assignements_on_recipe_id rescue ActiveRecord::StatementInvalid
  end
end
