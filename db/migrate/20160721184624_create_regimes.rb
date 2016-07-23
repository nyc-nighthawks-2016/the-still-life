class CreateRegimes < ActiveRecord::Migration
  def change
    create_table :regimes do |t|
      t.integer :duration, null: false
      t.text :description, null: false
      t.boolean :completion, default: false
      t.references :practice, index: true

      t.timestamps null: false
    end
  end
end
