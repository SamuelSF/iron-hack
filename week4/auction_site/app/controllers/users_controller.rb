class UsersController < ApplicationController

    def new
        @new_user = User.new
        render 'new'
    end

    def show
        @current_user = User.find(params[:id])
        render 'show'
    end

    def destroy
        User.destroy(params[:id])
        redirect_to '/users/new'
    end

    def create
        @new_user = User.new(
            :name => params[:user][:name],
            :email => params[:user][:email])
        @new_user.save

        redirect_to "/users/#{@new_user.id}"
    end
end