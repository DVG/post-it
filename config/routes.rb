Rails.application.routes.draw do
  resources :sticky_notes, except: [:update] do
    post :update, on: :member
  end
end
