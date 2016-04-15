class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :key, limit: 40

      t.timestamps null: false
    end
    add_index :projects, :key, unique: true
  end
end
