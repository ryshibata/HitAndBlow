Rails.application.routes.draw do
  get "main/game" => "main#game"
  post "main/update" => "main#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
