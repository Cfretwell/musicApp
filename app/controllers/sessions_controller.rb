class SessionsController < ApplicationController

    def create
        user = User.find_by_credentials(user_params[:email_address], user_params[:password])

        if user.nil?
            render json: 'Credentials were wrong'
        else
            # render json: "Welcome back #{user.email_address}"
            login!(user)
            redirect_to user_url(user)
        end
    end

    def new

    end

    def destroy
        logout!
        redirect_to new_session_url
    end

    private 

    def user_params 
        params.require(:user).permit(:email_address, :password)

    end

end