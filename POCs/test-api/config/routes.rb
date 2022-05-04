Rails.application.routes.draw do
  root 'welcome#index'

  get '/hello_world', to: 'hello_world#index'

end
