Rails.application.routes.draw do

=begin
  #ルート一括設定
  resources（複数）
    (resourcesは、自動でRESTfulなルート定義する。)
    「resources」はルーティング設定を一括設定する、とても便利な書きかた。
  
  resource（単数）
      resourcesと比較して、ルーティング設定が1行減っただけではなく、「Path」欄から「:id」が取り除かれる。
  
  #基本構文
    resources :name
    nameはリソース名
  #RESTful -> RESTの性質を持つ、という意味
    REST
      Webのしくみを形作るための大枠に なる取り決め（制約）
      "REST"の枠に入るのが Webのパーツ HTML HTTP URL etc..
      
  #collection は全てのデータに対するアクションに利用。
  
  #ルートの個別設定
    get 'photos'：HTTPメソッド「GET」＋URL「http://localhost:3000/photos」のリクエストを条件とする
    to: 'photos#index'：photosコントローラーのindexアクションを呼び出す
=end

  resources :top do
    collection do
      post :index
    end
  end

  resources :blogs, only: [:index, :new, :create, :edit, :update, :show, :destroy]do
    collection do
      post :confirm
      get  :top
    end
  end
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :users 
  
  get 'favorites', to: 'favorites#show'
  root'sessions#new'
end