class UsersController < ApplicationController
  def home
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user.nil?
    	@user = User.create(user_params)
    else
      @user.update(user_params)
    end
    if @user.errors.any?
      p @user.errors.full_messages
      render :action => :home
    else
      UserMailer.new_cv(@user).deliver  
  	  redirect_to root_path
    end
  end


  private

  def user_params
  	params.require(:user).permit(:email, :faculty, :cv)
  end
end
