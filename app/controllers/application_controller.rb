class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit(:rpe, :email, :password, :password_confirmation, :nombre, :apellido_paterno, :apellido_materno,:role)
      end
      devise_parameter_sanitizer.permit(:sign_in) do |user_params|
        user_params.permit(:rpe, :email, :password, :password_confirmation, :nombre, :apellido_paterno, :apellido_materno,:role)
      end
      devise_parameter_sanitizer.permit(:account_update) do |user_params|
        user_params.permit(:rpe, :email, :password, :password_confirmation, :nombre, :apellidoPaterno, :apellidoMaterno,:role)
      end
    end
end
