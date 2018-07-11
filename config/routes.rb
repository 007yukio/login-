Rails.application.routes.draw do
  
  resources :blogs, only: [:index, :new, :create, :edit, :update, :destroy]do
    #collection は全部のデータに対するアクションに利用。
    collection do
      post :confirm
      get  :top
    end
  end
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users 
  
  resources :top do
    collection do
      post :index
    end
  end
  
  root'sessions#new'
end