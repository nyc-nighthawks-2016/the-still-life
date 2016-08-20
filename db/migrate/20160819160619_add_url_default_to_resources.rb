class AddUrlDefaultToResources < ActiveRecord::Migration
  def change
    change_column :resources, :url, :string, default: "https://www.google.com"
  end
end
