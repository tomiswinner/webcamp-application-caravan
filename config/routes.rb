Rails.application.routes.draw do




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
  # Prefix Verb   URI Pattern                                                                              Controller#Action
  #                         POST   /blogs(.:format)                       blogs#create
  #               new_blog GET    /blogs/new(.:format)                   blogs#new
  #               edit_blog GET    /blogs/:id/edit(.:format)                  blogs#edit
  #                   blog GET    /blogs/:id(.:format)                     blogs#show
  #                         PATCH  /blogs/:id(.:format)                     blogs#update
  #                         PUT    /blogs/:id(.:format)                   blogs#update
  #                         DELETE /blogs/:id(.:format)             blogs#destroy



end
