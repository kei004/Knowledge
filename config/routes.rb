Rails.application.routes.draw do
 
  mount Ckeditor::Engine => '/ckeditor'
  root  'main#top'
  get   'home',   to:'main#top' 
  get   'output', to:'main#output'
  get   'about',  to:'main#about'

  resources :posts
  resources :categories
  

  get   'posts/:post_id' => 'posts#show'
  get   'categories/:categories_id' => 'categories#show'
  get   'create', to:'posts#index'
  post  'create', to:'posts#create'
  
  
 



  

end
