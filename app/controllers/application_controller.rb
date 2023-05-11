class ApplicationController < ActionController::Base  
    # Prevents CSRF attacks by raising an exception.
    protect_from_forgery with: :exception
    
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
        attributes = [:name, :surname]
        devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
        devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end

    def after_sign_in_path_for(resource)
        if current_user.admin?
            admin_area_index_path
        elsif current_user.moderator?
            my_business_area_index_path
        else
            my_area_index_path
        end
    end

end
  