Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  # resources :users, only: [:create, :index, :edit, :update]
  resources :signup, only: [:index, :create] do
    collection do
      get   'login' # マークアップ作業の為の仮置きっすbyZaki
      get   'registration'
      post  'registration'          =>  'signup#registration_validates'
      get   'sms_authentication'
      post  'sms_authentication'    =>  'signup#sms_authentication_validates'
      get   'sms_confirmation'
      post  'sms_confirmation'      =>  'signup#sms_confirmation_validates'
      get   'address'
      get   'creditcard'
      get   'done'
    end
  end
end
