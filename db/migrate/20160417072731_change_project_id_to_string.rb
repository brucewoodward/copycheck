class ChangeProjectIdToString < ActiveRecord::Migration
  def change
    change_column :copies, :project_id, :string
  end
end
