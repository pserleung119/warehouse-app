Rails.application.routes.draw do
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'home/create' => 'home#create'
  delete 'home/destroy/:id' => 'home#destroy'
  patch 'home/update/:id' => 'home#update'
end
