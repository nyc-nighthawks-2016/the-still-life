module RegimesHelper
	def display_time(regime)
		(regime.daily_practice_time - 4.hours).strftime("%b %e, %l : %M %P")
		# regime.daily_practice_time
	end
end