class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, :only => [:create]
  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :avatar, :email, :password)}
    end
    
end

