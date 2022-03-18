Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    # get 'customers/new'
    root to: 'pages#home'
    resources :customers
  end
end