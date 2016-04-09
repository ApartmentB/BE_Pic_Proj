class MakeSolvedSetToDefault < ActiveRecord::Migration
  def change
  	change_column :posts, :solved, :boolean, :default => false
  end
end
