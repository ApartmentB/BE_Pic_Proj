class AddColumnsToTables1 < ActiveRecord::Migration
  def change
  	add_column(:users, :score, :integer)
  	add_column(:posts, :title, :string)
  end
end
