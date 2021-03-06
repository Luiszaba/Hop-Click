# frozen_string_literal: true

# controller for Application
class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def welcome; end

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end
end

