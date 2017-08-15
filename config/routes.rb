Rails.application.routes.draw do
  resources :notas do
  	member do
  		get "listar"
  	end
  end
  resources :categorias
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
