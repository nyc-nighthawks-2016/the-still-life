class AddUserReferenceToRegimes < ActiveRecord::Migration
  def change
  	add_reference :regimes, :user, index: true
  end
end
