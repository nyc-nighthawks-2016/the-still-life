class RegimesController < ApplicationController

	def index
	end

	def new
		if logged_in?
			@practice = Practice.find(params[:practice_id])

			@regime = Regime.new
		else
			redirect_to login_url
		end
	end

	def show
		@regime = Regime.find(params[:id])
	end


	def create
		if logged_in?

			@regime = generate_regime(params)
			current_user.update_attribute(:practice, Practice.find(params[:practice_id]))
			# Do this stuff (copied and pasted from Seth)
			respond_to do |format|
		    if @regime.save
		      format.html { redirect_to @regime, notice: 'Regimen was successfully created.' }
		      format.json { render :show, status: :created, location: @regime }
		    else
		      format.html { render :new }
		      format.json { render json: @regime.errors, status: :unprocessable_entity }
		    end
		  end
		 # else (if not logged in)...
		else
			# ...take a hike
			redirect_to login_url
		end
	end

	def edit
		@regime = Regime.find(params[:id])

		if logged_in? && @regime.user == current_user
			render 'edit'
		else
			redirect_to root_path
		end
	end

	def update
		@regime = Regime.find(params[:id])
		if logged_in? && @regime.user == current_user
			time = generate_time(params)
			@regime.update(daily_practice_time: time)
			redirect_to @regime
		else
			redirect_to root_path
		end
	end


	private
	def generate_regime(params)
	  # Get the practice
			practice = Practice.find(params[:practice_id])
			# Get the time
			time = generate_time(params)
			# Create Regimen
			regime = Regime.new({
				daily_practice_time: time,
				practice: practice,
				user: current_user
				})
			return regime
	end

	def generate_time(params)
		hour = params[:regime]["daily_practice_time(4i)"] # daily_pracitce_time(4i) is what is stored in params.  It looks odd, but I verfied it on pry
		minute = params[:regime]["daily_practice_time(5i)"]
		t = DateTime.now
		time = DateTime.new(t.year, t.month, t.day, hour.to_i + 4, minute.to_i, 0)
	end

end


