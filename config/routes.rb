RsvpApp::Application.routes.draw do
  resources :users

  resources :events do
    resources :invites, only: [:new]
  end

  resources :invites, only: [:create, :edit, :update]

#           Prefix Verb   URI Pattern                             Controller#Action
#            users GET    /users(.:format)                        users#index
#                  POST   /users(.:format)                        users#create
#         new_user GET    /users/new(.:format)                    users#new
#        edit_user GET    /users/:id/edit(.:format)               users#edit
#             user GET    /users/:id(.:format)                    users#show
#                  PATCH  /users/:id(.:format)                    users#update
#                  PUT    /users/:id(.:format)                    users#update
#                  DELETE /users/:id(.:format)                    users#destroy
# new_event_invite GET    /events/:event_id/invites/new(.:format) invites#new
#           events GET    /events(.:format)                       events#index
#                  POST   /events(.:format)                       events#create
#        new_event GET    /events/new(.:format)                   events#new
#       edit_event GET    /events/:id/edit(.:format)              events#edit
#            event GET    /events/:id(.:format)                   events#show
#                  PATCH  /events/:id(.:format)                   events#update
#                  PUT    /events/:id(.:format)                   events#update
#                  DELETE /events/:id(.:format)                   events#destroy
#          invites POST   /invites(.:format)                      invites#create
#      edit_invite GET    /invites/:id/edit(.:format)             invites#edit
#           invite PATCH  /invites/:id(.:format)                  invites#update
#                  PUT    /invites/:id(.:format)                  invites#update

end
