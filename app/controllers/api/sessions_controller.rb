class Api::SessionsController < ApplicationController

    skip_before_action :confirm_authentication, only: [:create]

    def create
        user = User.find_by_username(params[:username])
        if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :created
    else
        render json: { error: "Invalid username or password" }, status: :unauthorized
    end
end


    def destroy
        session.delete(:user_id)
    end

end