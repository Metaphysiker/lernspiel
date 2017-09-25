Rails.application.routes.draw do

  root "pages#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/about/', to: 'pages#about', as: "about"
  get '/overview/', to: 'pages#overview', as: "overview"
  get '/ethics/:number', to: 'courses#ethics', as: "ethics"
end
