Rails.application.routes.draw do
  
  get 'blogs' => 'blogs#index'
    resources :blogs do
      collection do
        post :confirm  
      end
    end
  root to: 'blogs#index'
end