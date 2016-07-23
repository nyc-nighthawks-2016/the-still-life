class Renametypeonresourcestocategory < ActiveRecord::Migration
  def change
    rename_column :resources, :type, :category
  end
end
