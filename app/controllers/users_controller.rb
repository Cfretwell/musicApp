class UsersController < ApplicationController

    def create 
        @user = User.new(user_params)

        if @user.save
            render json: @user
            # login_user!(@user)
            # redirect_to 
        else
            render json: @user.errors.full_message
            # flash.now[:errors] = @user.errors.full_message
            # render :new
        end
    end

    def new
        @user = User.new
        render :new 
    end


    private 
    def user_params
        params.require(:user).permit(:password, :email_address)
    end
end