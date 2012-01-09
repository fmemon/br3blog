class UsersController < ApplicationController

  before_filter :authenticate, :only => [:edit, :update]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def edit
    @user = current_user
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to articles_path, :notice => "User #{user.email} successfully added"
    else
      render :action => "new"
    end
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to articles_path, :notice => "Update user #{user.email} successfully"
    else
      render :action => "edit"
    end
  end

end
