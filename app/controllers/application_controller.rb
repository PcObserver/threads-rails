class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname, :terms_of_service, :phone_prefix, :phone_number,
                                                       :paypal_account, :birthdate, { address_attributes: %i[user_id line1 line2 city zipcode country_id state_id] }])
  end
end
