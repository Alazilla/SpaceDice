class UsersController < ApplicationController
	before_action :set_user, only: [:show]

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new", :notice => "My notice"
  end
end



def show
  @user = User.find(params[:id])
end

def edit
    @user = User.find(params[:id])
  end

private
def user_params
	params.require(:user).permit(:name, :email, :password)
end

def set_user
	@user = User.find(params[:id])
end

end
