Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create destroy]
  end

  # get '/lists', to: 'lists#index'
  # get '/lists/new', to: 'lists#new'
  # post '/lists', to: 'lists#create'
  # get '/lists/:id', to: 'lists#show', as: :list
end

# As a user, I can see all my movie lists
# As a user, I can create a movie list
# As a user, I can see the details of a movie list
# As a user, I can bookmark a movie inside a movie list
# As a user, I can destroy a bookmark


# A user can see all the lists
# GET "lists"
# A user can see the details of a given list and its name
# GET "lists/42"
# A user can create a new list
# GET "lists/new"
# POST "lists"
