class RenameTypeToAction < ActiveRecord::Migration
  def change
    rename_column :records,:type,:action

  end
end
