Rails.application.routes.draw do
    resources :boards do
      collection do
        post :confirm
      end
    end
end