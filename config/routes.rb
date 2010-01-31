ActionController::Routing::Routes.draw do |map|
  # named routes
  map.login 'login', :controller => 'user_sessions', :action => 'new'
  map.login 'logout', :controller => 'user_sessions', :action => 'destroy'
  
  # we're RESTful
  map.resources :items, :users, :user_sessions
  
  # home page
  map.root :controller=> :items, :action=>:index
end
