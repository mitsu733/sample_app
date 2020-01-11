Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get "top" => "homes#top"

# todolistsで投稿するときはtodolistsのcreateアクションが働く

post "todolists" => "todolists#create"

get "todolists" => "todolists#index"

get "todolists/:id" => "todolists#show",as:"todolist"

 #エラーコード
 #get 'todolists/:id/edit' => 'todolist', as: 'edit_todolist'

 get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'

 patch "todolists/:id" => "todolists#update", as:"update_todolist"
 delete "todolists/:id" => "todolists#destroy", as:"destroy_todolist"


end
