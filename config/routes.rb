Playon::Application.routes.draw do
  
  get "events/index"

  root :to => 'events#index'
  
end
