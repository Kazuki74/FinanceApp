class UsersController < ApplicationController
	def index
	end

	def my_portfolio
		@user = current_user
		@user_stocks = current_user.stocks
	end
end
