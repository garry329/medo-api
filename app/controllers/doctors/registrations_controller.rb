module Doctors
	class RegistrationsController < DeviseTokenAuth::RegistrationsController
		def sign_up_params
	      params.permit([*params_for_resource(:sign_up), 
	      	:location, :confirm_success_url])
	    end
	end
end