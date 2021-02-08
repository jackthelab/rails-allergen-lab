class UsersController < ApplicationController

    def show
        find_user
    end

    def destroy
        find_user.destroy
    end

    private
    
    def find_user
        @user = User.find_by(id: params[:id])
    end
    
end
