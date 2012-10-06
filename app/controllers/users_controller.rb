class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :new, :create]
  def index

  end

  def new
    @user = User.new
  end

  def show

  end

  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to user_path(@user), notice: "Successfully created"
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes params[:user]
      redirect_to user_path(@user), notice: "Successfully updated."
    else
      render :edit
    end
  end

  def destroy

  end
end
