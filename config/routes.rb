BackboneHackaton::Application.routes.draw do
  get "polls/show"

  scope module: :web do
    root to: "welcome#index"
    resources :polls, only: [:index, :show] do
      scope module: :polls do
        resources :items, only: [] do
          member do
            get :vote
          end
        end
      end
    end
  end

  namespace :api do
    resources :polls do
      scope module: :polls do
        resources :items, only: [] do
          member do
            post :vote
          end
        end
      end
    end
  end
end
