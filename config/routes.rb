Rails.application.routes.draw do
  get 'posts', to: 'posts#index' #HTTPメソッドは”get” 、ULIはposts、コントローラ名はto以下のposts、アクション名はindex
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
end
