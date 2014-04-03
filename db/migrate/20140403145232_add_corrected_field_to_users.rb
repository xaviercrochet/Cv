class AddCorrectedFieldToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :corrected, :boolean, default: false
  end
end
