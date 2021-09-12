Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #url:"top"にHTTP_method:"get（＝データを取得）"を要求し、controller:"homes"のaction:"top"を実行する。
  get "top" => "homes#top"

  # url:"todolists"にHTTP_method:"post（＝データを投稿、送信）"を要求し、controller:"todolists"のaction:"create"を実行する。
  post "todolists" => "todolists#create"

  get "todolists" => "todolists#index"

  get "todolists/:id" => "todolists#show", as: "todolist"

  get "todolists/:id/edit" => "todolists#edit", as: "edit_todolist"

  patch "todolists/:id" => "todolists#update", as: "update_todolist"

  delete "todolists/:id" => "todolists#destroy", as: "destroy_todolist"

 end
