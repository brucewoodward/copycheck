class ChangeColumnNameProjectId < ActiveRecord::Migration
  def change
    rename_column :copies, :project_id, :project_key
  end
end
