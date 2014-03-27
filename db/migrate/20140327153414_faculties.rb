class Faculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :abv
      t.timestamps
    end
  end
end
