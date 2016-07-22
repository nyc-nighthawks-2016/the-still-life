class RegimesController < ApplicationController

	def index
	end

	def show
		@regime = Regime.new
	end

	def create
		# binding pry
		hour = params[:regime]["daily_practice_time(4i)"]
		minute = params[:regime]["daily_practice_time(5i)"]
		t = Time.now
		time = Time.new(t.year, t.month, t.day, hour, minute, 0)
		
		# binding pry
		@regime = Regime.new()
	end

	def edit
	end

	def update
	end

end