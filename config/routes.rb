Rails.application.routes.draw do
  get 'nice_books/all', to: 'books#index', as: :all_books, defaults: { format: :json }

  get 'authors/new_author', to: 'authors#new', as: :new_author, defaults: { format: :html }
  post 'authors/create', defaults: { format: :html }
  get 'authors/:last_name', to: 'authors#show', as: :author_name, defaults: { format: :html }

  root to: 'authors#new'
end
