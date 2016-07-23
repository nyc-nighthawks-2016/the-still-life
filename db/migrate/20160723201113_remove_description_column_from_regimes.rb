class RemoveDescriptionColumnFromRegimes < ActiveRecord::Migration
  def change
    remove_column(:regimes, :description)
  end
end
