class SessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:username], params[:password])
      redirect_to root_path
    else
      flash.now[:error] = "Username or password was invalid"
      render :new
    end
  end

  def destory
    logout
    redirect_to new_session_path
  end
end
