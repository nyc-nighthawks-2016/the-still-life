class AddStartDateAndEndDateAndDailyPracticeTimeToRegimes < ActiveRecord::Migration
  def change
  	add_column :regimes, :start_date, :date
  	add_column :regimes, :end_date, :date
  	add_column :regimes, :daily_practice_time, :time
  end
end
