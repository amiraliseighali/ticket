class UsersController < ApplicationController
  def index
    @users = User.all
    # @users = User.order('position ASC') for some reason not working, it has to do with
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to(users_path)
    else
      render('new')
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to(user_path(@user))
    else
      render('edit')
    end
  end
  def delete
    @user = User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(users_path)
  end
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end

end
