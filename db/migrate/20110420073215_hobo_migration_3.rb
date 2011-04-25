class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :recipes, :country_id, :integer
    remove_column :recipes, :country

    add_index :recipes, [:country_id]
  end

  def self.down
    remove_column :recipes, :country_id
    add_column :recipes, :country, :string

    drop_table :countries

    remove_index :recipes, :name => :index_recipes_on_country_id rescue ActiveRecord::StatementInvalid
  end
end
