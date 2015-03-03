Rails.application.routes.draw do
  resources :productify_lists do
    resources :productify_tasks
  end

  root 'productify_lists#index'
end
