class RemovesBelongsToFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :user_id
  end
end
