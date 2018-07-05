Rails.application.routes.draw do
  
    get 'blogs' => 'blogs#index'
    resources :blogs, only: [:index, :new, :create, :edit, :update, :destroy]do
      collection do
        post :confirm  
      end
    end
    
  root'top#index'
end