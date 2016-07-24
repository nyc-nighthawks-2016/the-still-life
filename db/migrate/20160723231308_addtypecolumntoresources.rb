class Addtypecolumntoresources < ActiveRecord::Migration
  def change
    add_column(:resources, :type, :string, default: "Link")
  end
end
