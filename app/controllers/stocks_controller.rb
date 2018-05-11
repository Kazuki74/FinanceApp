class StocksController < ApplicationController
	def index
	end

	def search
		if params[:stock].blank?
			flash.now[:danger] = "You have enterd an empty search string"
		else
			@stock = Stock.new_from_lookup(params[:stock])
			flash.now[:danger] = "You have entered on incorrect symbol" unless @stock
		end
		respond_to do |format|
				format.js {render partial: 'users/result'}
		end
	end
end
