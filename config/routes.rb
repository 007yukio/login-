Rails.application.routes.draw do

=begin 
  resourcesは、自動でRESTfulなルート定義する。
  #基本構文
    resources :name
    nameはリソース名
  #RESTful -> RESTの性質を持つ
    REST
      Webのしくみを形作るための大枠に なる取り決め（制約）
      "REST"の枠に入るのが Webのパーツ HTML HTTP URL etc..
  #collection は全てのデータに対するアクションに利用。
=end

  resources :blogs, only: [:index, :new, :create, :edit, :update, :show, :destroy]do
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
  
  resources :favorites, only: [:create, :destroy]
  
  get '/favorites/show', to: 'favorites#show'
  root'sessions#new'
end