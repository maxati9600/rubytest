Rails.application.routes.draw do
	get "welcome/say_hello" => "welcome#say"
	get "welcome/index" =>"welcome#index"
        get "welcome/new" =>"welcome#new"
	root :to => "welcome#index"
	devise_for :users, controllers: {
        sessions: 'users/sessions',
        confirmations: 'users/confirmations'
        }



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
