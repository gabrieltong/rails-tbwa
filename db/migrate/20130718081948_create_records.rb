class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :user
      t.string :type
      t.integer :score

      t.timestamps
    end
  end
end
