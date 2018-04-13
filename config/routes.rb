Rails.application.routes.draw do
  mount Dashing::Engine, at: Dashing.config.engine_path
  devise_for :users, :controllers => { :registrations => "registrations" }
    get '/profilepage' => "users#profilepage"
    patch '/updateuser' => "users#updateuser", as:'user'
    get '/newjourney' => 'journeys#newjourney', as:'subgoalcreation'
    post '/journeycreated' => 'journeys#createjourney', as:'journeys'
    get '/newsubgoals/:id' => "subgoals#newsubgoals", as:'newsubgoals'
    post '/subgoalcreate' => 'subgoals#createsubgoal', as:'subgoals'
    get '/journeyoverview/:id' => 'journeys#managejourney', as:'overview'
    get '/subgoalpost/:id' => "posts#newpost", as:'newpost'
    post '/postcreated' => 'posts#createpost', as:'posts'
    get '/myjourneys' => 'journeys#myjourneys'
    get '/' => "application#homepage"
    get '/follow/:id' => 'follows#create', as:'follow_user'
    get '/journey/:id' => 'subgoals#showsubgoal', as:'journey'
    get '/idols' => 'users#idols'
    get '/dashboard' => 'users#dashboard'
    patch '/start/:id' => 'journeys#changestatus', as:'start_journey'
end
