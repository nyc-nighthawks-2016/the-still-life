class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.string :url, null: false
      t.string :description, null: false
      t.references :practice, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
