class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render 'new'
    end
  end


  def edit
    @user = User.find(params[:id])
    end

    def update
    @user = User.find(params[:id])

        if @user.update_attributes(params.require(:user).permit(:first_name, :last_name, :email, :gender, :age, :password_digest, :picture_file_name))
              redirect_to users_path
        else
               render :edit
       end
  end


   private
        def user_params
            params.require(:user).permit(:email, :password, :password_confirmation, :first_name)
        end
end
