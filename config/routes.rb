Rails.application.routes.draw do
  
  resources :blogs, only: [:index, :new, :create, :edit, :update, :destroy]do
    
    #collection は全部のデータに対するアクションに利用する。
    collection do
      post :confirm
      get  :top
    end
  end
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users 
  
  root'sessions#new'
end