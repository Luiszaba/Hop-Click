class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  def welcome; end

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end
end

