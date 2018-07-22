Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlsou
  root 'user#index'
  post '/user/create' => 'user#create' ,:as =>'create'
  get '/user/index' => 'user#index' ,:as =>'index'
  get '/user/index/function' => 'user#function' ,:as => 'function'
  get '/user/index/new' => 'user#new' ,:as =>'new'
  get '/user/login' => 'user#login' ,:as =>'login'
  post '/user/login/upgrade' => 'user#upgrade' ,:as =>'login_upgrade'
  get '/user/login/logout' => 'user#logout' ,:as =>'logout'
  get '/user/edit' => 'user#edit' ,:as =>'edit'
  get '/user/edit/change' => 'user#change' ,:as =>'change'
  post '/user/edit/change/change_password' => 'user#change_password' ,:as =>'change_password'
  get '/user/platform' => 'user#platform' ,:as => 'platform'

  get '/rpost/index' => 'rpost#rpost_index' ,:as => 'rpost_index'
  get '/rpost/make_post' => 'rpost#make_post' ,:as => 'make_post'
  post '/rpost/make_post/new_post' => 'rpost#new_post' ,:as =>'new_post'
  get '/rpost/my_post' => 'rpost#my_post' ,:as => 'my_post'
  get '/rpost/index/:rpost_id/detail_post' => 'rpost#detail_post' ,:as => 'detail_post'
  get '/rpost/delete/:rpost_id' => 'rpost#delete_rpost' ,:as => 'delete_rpost'

  post '/review/edit/:rpost_id' => 'review#edit_review' ,:as => 'edit_review'
  get '/review/edit/:rpost_id/delete/:review_id' => 'review#delete_review' ,:as => 'delete_review'
end
