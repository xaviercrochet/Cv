class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :filename
      t.references :user, index: true
      t.timestamps
    end
  end
end
