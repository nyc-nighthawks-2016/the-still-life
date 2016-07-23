class AddDefaultDurationForRegimes < ActiveRecord::Migration
  def change
    change_column_default :regimes, :duration, 5
  end
end
