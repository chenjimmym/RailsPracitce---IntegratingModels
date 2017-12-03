class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end
    def new
        render "new_user"
    end
    def show
        @user = User.find(params[:id])
        render json: @user
    end
    def edit
        @user = User.find(params[:id])
        render "edit"
    end
    def create
        User.create(name: params[:name])
        redirect_to '/users'
    end
    def total
        @count = User.all
        puts @count.length
        render text:@count.length
    end

end
