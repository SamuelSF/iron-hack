class UsersController < ApplicationController

    def index
        @users = User.all.order("name")
        render 'index'
    end

    def new
        @new_user = User.new
        render 'new'
    end

    def show
        @current_user = User.find(params[:id])
        render 'show'
    end

    def destroy
        User.destroy params[:id]
        redirect_to '/users/'
    end

    def create
        @new_user = User.new(
            :name => params[:user][:name],
            :email => params[:user][:email])
        @new_user.save

        redirect_to "/users/#{@new_user.id}"
    end
end