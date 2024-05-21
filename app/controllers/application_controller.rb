class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected

  def user_not_authorized
    render file: "#{Rails.root}/public/403.html", status: :forbidden
  end
end
