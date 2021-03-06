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
      flash[:notice] = "Votre cv a été enregistré :-)"  
  	  redirect_to root_path
    end
  end

  def mark
    @user = User.find(params[:format])
    @user.mark_as_corrected
    redirect_to admins_path
  end



  private

  def user_params
  	params.require(:user).permit(:email, :faculty_id, :cv)
  end
end
