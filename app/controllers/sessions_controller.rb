class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:provider].present?
      @user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to root_path
    else
      @user = User.find_by(email: params[:session][:email])
      verify_user
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

    def verify_user
      if @user && @user.authenticate(params[:session][:password])
        login_successful
      else
        flash[:failure] = "That login was unsuccessful"
        redirect_to login_path
      end
    end

    def login_successful
      session[:user_id] = @user.id
      redirect_to root_path
    end


end
