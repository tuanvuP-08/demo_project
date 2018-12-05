class ApplicationController < ActionController::Base
  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    render file: "public/404.html", status: :not_found, layout: false
  end

  def current_user? user
    user == current_user
  end
end
