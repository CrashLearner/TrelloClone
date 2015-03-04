Rails.application.routes.draw do
  resources :productify_lists do
    resources :productify_tasks do
    	member do
    		patch :complete
    	end
    end
  end

  root 'productify_lists#index'
end
