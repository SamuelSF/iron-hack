Rails.application.routes.draw do
  # This route sends requests to our naked
  # url to the home action in the users controller
  root to: 'users#home'

  get 'login' => 'sessions#new' #display loging form

  post 'login' => 'sessions#create' #create login session

  delete 'logout' => 'sessions#destroy' #logout

  # These routes will be for signup.
  # The first renders a form in the browse,
  # the second will receive the form and
  # create a user in our database using the
  # data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/profile' => 'users#show'
  get '/users' => 'users#index'

end