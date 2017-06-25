class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:reason])
      devise_parameter_sanitizer.permit(:account_update, keys: [:reason])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:studentid])
      devise_parameter_sanitizer.permit(:account_update, keys: [:studentid])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:server])
      devise_parameter_sanitizer.permit(:account_update, keys: [:server])

  end
end
