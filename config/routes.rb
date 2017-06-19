Rails.application.routes.draw do
  get 'comments', to: "comments#index"

  devise_for :users
	get 'top/index'
  post 'top/create'
   root to: redirect('top/index')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
