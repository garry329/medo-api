Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
                            	registrations: 'users/registrations',
  }
  mount_devise_token_auth_for 'Doctor', at: 'doc_auth', controllers: {
                            	registrations: 'doctors/registrations',
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
