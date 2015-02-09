class AdminsController < ApplicationController
	  before_action :authenticate_admin!

	def index
		@users = User.all.order("updated_at DESC")
	end

	def show_cv
		@user = User.find(params[:id])
	end

	def send_mail
		@user = User.find(params[:id])
		UserMailer.correct(@user, current_admin.email, params[:q]).deliver
		@user.mark_as_corrected
		redirect_to admins_path
	end
end
