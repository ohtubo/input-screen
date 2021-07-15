class ReserveController < ApplicationController
	before_action :permit_params, only: :confirm

	def new
		session.delete(:reserve)
		@reserve = Reserve.new
		@reserves = Reserve.all
	end

	def back
		@reserve = Reserve.new(session[:reserve])
		session.delete(:reserve)
		render :new
	end

	def confirm
		@reserve = Reserve.new(@attr)
		session[:reserve] = @reserve
		if @reserve.invalid?
			render :new
		end
	end

	def complete
		Reserve.create!(session[:reserve])
		session.delete(:reserve)
	end

	private

	def permit_params
		@attr = params.require('reserve').permit(:id, :reserve_date, :name, :note)
	end
end
