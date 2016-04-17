class FixIdNameInCopies < ActiveRecord::Migration
  def change
    rename_column :copies, :project, :project_id
  end
end
