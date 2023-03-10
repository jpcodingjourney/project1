class UsersController < ApplicationController
    before_action :check_for_admin, :only => [:index]
    
    def index
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new user_params
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render :new
        end
    end

    def my_page
        @code = params[:code]
    end
    
    def restaurants
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
