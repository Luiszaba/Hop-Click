# frozen_string_literal: true

# controller for Devise user registrations
class RegistrationsController < Devise::RegistrationsController

  private

  def signup_params
    params.require(:user).permit(:name,
                                 :username,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name,
                                 :username,
                                 :email,
                                 :password,
                                 :password_confirmation,
                                 :current_password)
  end
end
