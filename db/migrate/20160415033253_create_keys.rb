class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|

      t.timestamps null: false
    end
  end
end
