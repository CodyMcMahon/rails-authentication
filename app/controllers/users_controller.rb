class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new user_params
        @user[:optional] = params[:user][:optional] if !params[:user][:optional].empty?
        if @user.save
            #session[:user_id] = @user.id
            redirect_to '/'
        else
            redirect_to '/im_gay'
        end
    end
    
    def edit
        @user = User.find_by(id: session[:user_id])
        if @user and @user.authenticate(params[:user][:password]) and !params[:user][:optional].empty?
            @user.optional = params[:user][:optional]
            @user.save
            redirect_to '/'
        else
            redirect_to '/im_gay'
        end
    end
    
    private
    def user_params
        params.require(:user).permit(:name,:password,:password_confirmation)
    end
end
