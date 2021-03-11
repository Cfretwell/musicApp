class UsersController < ApplicationController
    before_action :require_current_user!, except: [:create, :new]

    def create 
        # puts "Creating trying to save"
        
        @user = User.new(user_params)
        puts @user.session_token

        if @user.save        
            login!(@user)
            redirect_to user_url(@user)
        else
            flash.now[:errors] = @user.errors.full_message
            render :new
        end
    end

    def new
        @user = User.new
        render :new 
    end

    # def index 
    #     emails = User.select(:email_address)
    #     render json: emails 
    # end

    private 
    def user_params
        params.require(:user).permit(:email_address, :password)
    end
end