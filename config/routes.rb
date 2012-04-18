ApiBakeoff::Application.routes.draw do
  resources :tasks
  root :to => 'tasks#index'

  match "/tasks/new/sms" => "tasks#new_by_sms", :via => :post
end
