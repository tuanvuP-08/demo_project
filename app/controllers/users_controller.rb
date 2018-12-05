class UsersController < ApplicationController
  before_action :load_user, only: [:show]

  def show; end

  def index
    @users = User.sort_by_created_desc.paginate page: params[:page],
      per_page: Settings.number_of_users_per_page
  end
end
