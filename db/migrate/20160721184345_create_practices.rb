class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.text :description, null: false
      t.string :method, null: false

      t.timestamps null: false
    end
  end
end
