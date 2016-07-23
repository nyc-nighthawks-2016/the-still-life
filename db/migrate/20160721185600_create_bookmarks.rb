class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.references :user, index: true
      t.references :resource, index: true

      t.timestamps null: false
    end
  end
end
