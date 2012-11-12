Grill::Application.routes.draw do

  resources :items

  root to: 'pages#home'
  get '/menu' => 'pages#menu', as: 'menu'



  
  get '/mockup/home' => 'mockup#home'
  
  get '/help' => 'mockup#help'
  get "/location" => 'mockup#location', as: 'location'
  get "/mockup/menu" => 'mockup#menu'
  get "/orders/new" => 'mockup#ordering', as: 'new_order'
  get "/reservations/new" => 'mockup#reservations', as: 'new_reservation'
end
