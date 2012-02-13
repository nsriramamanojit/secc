class UserSessionsController < ApplicationController
  before_filter :require_user, :only => :destroy
  layout nil
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
 #   @user_session.remember_me = true

    if @user_session.save
      flash[:notice] = "Logged in Successfully."
#      redirect_to :controller=>'generals'
      redirect_to(:controller=>'homes',:action=>'index')
    else
      flash[:error] = "Invalid User Name or Password. "
      #flash[:error] = "Your Account Not Approved,Please contact Admin for more info.."
      render :action => :new
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = "You have successfully logged out."
    redirect_back_or_default new_user_session_url
  end
end
