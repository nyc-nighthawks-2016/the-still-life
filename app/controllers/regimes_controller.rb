class RegimesController < ApplicationController

	def index
	end

	def show
		@regime = Regime.new
	end

	def create

		practice = Practice.first # this has to be changed to the specified practice

		hour = params[:regime]["daily_practice_time(4i)"] # daily_pracitce_time(4i) is what is stored in params.  It looks odd, but I verfied it on pry
		minute = params[:regime]["daily_practice_time(5i)"]
		t = Time.now
		time = Time.new(t.year, t.month, t.day, hour, minute, 0)
		
		# binding pry
		@regime = Regime.new({
			daily_practice_time: time,
			duration: 5,
			description: practice.description,
			practice: practice,
			user: current_user
			})

		respond_to do |format|
      if @regime.save
        format.html { redirect_to @regime, notice: 'Regimen was successfully created.' }
        format.json { render :show, status: :created, location: @regime }
      else
        format.html { render :new }
        format.json { render json: @regime.errors, status: :unprocessable_entity }
      end
    end
	end

	def edit
	end

	def update
	end

end