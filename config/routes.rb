Rails.application.routes.draw do
  root 'welcome#index'
  post '/', to: 'welcome#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
