class RenameTypeOnPracticesToCategory < ActiveRecord::Migration
  def change
    rename_column :practices, :type, :category
  end
end
