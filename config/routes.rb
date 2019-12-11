Rails.application.routes.draw do
  namespace :v1 do
    resources :products, only: %i[create index]
  end
end
