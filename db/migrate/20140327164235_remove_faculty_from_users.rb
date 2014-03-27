class RemoveFacultyFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :faculty
  end
end
