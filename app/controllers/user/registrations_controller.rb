class User::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number,
    :customer_type, :plan_type, :terms_and_conditions, :gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_number,
    :customer_type,:plan_type, :terms_and_conditions, :gender])
  end

end
