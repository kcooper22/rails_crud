Rails.application.routes.draw do

  devise_for :users 

  resources :foods

  root 'foods#index'

end

#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                    foods GET    /foods(.:format)               foods#index
#                          POST   /foods(.:format)               foods#create
#                 new_food GET    /foods/new(.:format)           foods#new
#                edit_food GET    /foods/:id/edit(.:format)      foods#edit
#                     food GET    /foods/:id(.:format)           foods#show
#                          PATCH  /foods/:id(.:format)           foods#update
#                          PUT    /foods/:id(.:format)           foods#update
#                          DELETE /foods/:id(.:format)           foods#destroy
