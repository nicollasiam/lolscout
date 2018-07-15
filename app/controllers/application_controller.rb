class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  # Devise
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email])
  end

  private

  def user_not_authorized
    flash[:alert] = 'Você não possui autorização para fazer esta ação.'
    redirect_to(request.referrer || root_path)
  end
end
