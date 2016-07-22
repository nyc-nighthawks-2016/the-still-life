module RegimesHelper
	def display_time(regime)
		regime.daily_practice_time.strftime("%l : %M %P")
	end
end