Rails.application.routes.draw do

  get "tacos" => "tacos#index", as: :tacos
  get "tacos/new" => "tacos#new", as: :new_taco
  post "tacos" => "tacos#create"
  get "tacos/:id/edit" => "tacos#edit", as: :edit_taco
  patch "tacos/:id" => "tacos#update"
  get "tacos/:id" => "tacos#show", as: :taco
  delete "tacos/:id" => "tacos#destroy"
end
