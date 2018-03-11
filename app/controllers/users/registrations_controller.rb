module Users
	class RegistrationsController < DeviseTokenAuth::RegistrationsController
		def sign_up_params
	      params.permit([*params_for_resource(:sign_up), 
	      	:name,:nickname,:image,:email,:contact, :verified_contact, :role, :confirm_success_url])
	    end
	end
end