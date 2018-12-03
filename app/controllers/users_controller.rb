class UsersController < ApplicationController
  before_action :load_user, only: [:show]

  def show; end

  def index
    @users = User.all
  end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    render file: "public/404.html", status: :not_found, layout: false
  end

end
