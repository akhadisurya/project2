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
      #this syntax helps the sign up page
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end


  def edit
    @user = User.find(params[:id])
    end

    def update
    @user = User.find(params[:id])

        if @user.update_attributes(params.require(:user).permit(:first_name, :last_name, :email, :gender, :age, :preference, :password_digest))
              redirect_to user_path
        else
               render :edit
       end
  end


  def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to root_path
  end


   private
        def user_params
            params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :picture_file_name, :last_name, :gender, :age, :preference)
        end
end
