class UsersController < ApplicationController
  def home
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	@user.save
  	@cv = @user.build_cv
  	@cv.filename = "test"
  	@cv.save
  	redirect_to root_path
  end

  private

  def user_params
  	params.require(:user).permit(:email, :faculty)
  end
end
