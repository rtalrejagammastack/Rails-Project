Rails.application.routes.draw do
  root 'articles#index'

  # post '/articles/:article_id/comments' => 'comments#create',as: 'article_comments'
  # delete '/articles/:article_id/comments/:comment_id' => 'comments#destroy', as: 'article_comment'

  # get '/articles' => 'articles#index', as: 'articles'
  # post '/articles' => 'articles#create'
  # get '/article/new' => 'articles#new', as: 'new_article'
  # get '/articles/:id/edit' => 'articles#edit' ,as: 'edit_article'
  # get '/articles/:id' => 'articles#show' , as: 'article'
  # patch '/articles/:id' => 'articles#update'
  # delete '/articles/:id' => 'articles#destroy'

  resources :articles do
    resources :comments
  end
end
