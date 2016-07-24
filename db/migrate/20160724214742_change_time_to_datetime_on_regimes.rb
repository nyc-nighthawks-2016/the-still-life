class ChangeTimeToDatetimeOnRegimes < ActiveRecord::Migration
  def change
    remove_column(:regimes, :daily_practice_time)
    add_column :regimes, :daily_practice_time, :datetime
  end
end
