Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    root to: 'static_pages#faq'
    get 'school', to: 'static_pages#school'

    resources :contacts, only: [:new, :create]
  end
end
