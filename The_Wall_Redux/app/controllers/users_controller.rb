class UsersController < ApplicationController

  def index
    if signed_in?
      @users = User.all.select(:id, :name, :email, :created_at)
    else
      deny_access
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      flash.now[:error] = "User could not be created."
      render action: "new"
    end
  end

  def show
    if signed_in? 
      @user = User.find(params[:id])
      @author_id = session[:user_id];

      @post = Post.new
      @comment = Comment.new

      @posts = Post.where(wall_id: params[:id])
    else
      deny_access
    end 
  end

  def destroy
    u = User.find(params[:id])
    
    if current_user?(u)
        flash[:notice] = "You really shouldn't delete yourself - it isn't healthy!"
    elsif u.destroy == false
        flash[:errors] = u.errors.messages
    end
    redirect_to users_path
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end