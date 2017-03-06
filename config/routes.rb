Rails.application.routes.draw do
  get '/' => 'categories#index'
  get '/categories/:id/articles' => 'categories#show', as: 'categories'
  get '/categories/:id/articles/new' => 'articles#new', as: 'new_article'
  post '/categories/:id/articles' => 'articles#create'
  get '/categories/:category_id/articles/:id' => 'articles#show', as: 'article'
  get '/categories/:category_id/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  patch '/categories/:category_id/articles/:id' => 'articles#update'
end

