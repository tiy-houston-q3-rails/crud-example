Rails.application.routes.draw do

  get "tacos" => "tacos#index", as: :tacos
  get "tacos/new" => "tacos#new", as: :new_taco
  post "tacos" => "tacos#create"
end
