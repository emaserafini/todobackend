Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :todo_items, only: [:index, :show, :create, :update, :destroy] do
      put 'delete', on: :collection
    end
  end
end
