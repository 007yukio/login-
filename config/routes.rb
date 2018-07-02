Rails.application.routes.draw do
  
  get 'blogs' => 'blogs#new'
    resources :blogs do
      collection do
        post :confirm  
      end
    end
  root to: 'blogs#new'
end