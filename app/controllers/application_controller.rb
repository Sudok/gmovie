class ApplicationController < ActionController::Base

  # Pundit for authentication
  include Pundit

  # Manage Pundit Errors
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception
  #include CanCan::ControllerAdditions
  
  # Setting Layoyt
  layout :layout_by_resource

  protected

    def layout_by_resource
      if devise_controller? && resource_name == :admin
        "backoffice_devise"
      else
        "application"
      end 
    end

    def user_not_authorized
      flash[:alert] = "Você não está autorizado a executar essa ação!"
      redirect_to(request.referrer || root_path)
    end
end
