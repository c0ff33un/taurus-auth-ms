class ApplicationController < ActionController::API
	
  include ActionController::MimeResponds
	respond_to :json
	
	before_action :configure_permitted_parameters, if: :devise_controller?
	
	
	private

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :handle])
	end

end
