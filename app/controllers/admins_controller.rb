class AdminsController < ApplicationController
	  before_action :authenticate_admin!

	def index
		@users = User.all
	end

	def show_cv
		@user = User.find(params[:id])
	end
end
