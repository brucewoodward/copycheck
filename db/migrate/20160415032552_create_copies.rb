class CreateCopies < ActiveRecord::Migration
  def change
    create_table :copies do |t|
      t.datetime :date
      t.text :text
      t.text :name
      t.integer :project

      t.timestamps null: false
    end
  end
end
