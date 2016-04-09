class AddCaptionAndStatusToPost < ActiveRecord::Migration
  def change
  	add_column(:posts, :caption, :string)
  	add_column(:posts, :solved, :boolean, :default => false)
  end
end
