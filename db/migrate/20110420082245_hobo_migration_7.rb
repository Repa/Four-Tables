class HoboMigration7 < ActiveRecord::Migration
  def self.up
    rename_table :category_assignements, :category_assignments

    remove_index :category_assignments, :name => :index_category_assignements_on_recipe_id rescue ActiveRecord::StatementInvalid
    remove_index :category_assignments, :name => :index_category_assignements_on_category_id rescue ActiveRecord::StatementInvalid
    add_index :category_assignments, [:category_id]
    add_index :category_assignments, [:recipe_id]
  end

  def self.down
    rename_table :category_assignments, :category_assignements

    remove_index :category_assignements, :name => :index_category_assignments_on_category_id rescue ActiveRecord::StatementInvalid
    remove_index :category_assignements, :name => :index_category_assignments_on_recipe_id rescue ActiveRecord::StatementInvalid
    add_index :category_assignements, [:recipe_id]
    add_index :category_assignements, [:category_id]
  end
end
