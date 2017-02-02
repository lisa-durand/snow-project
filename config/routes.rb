Rails.application.routes.draw do
  scope '(:locale)' do
    root 'static_pages#faq'
    get 'school', to: 'static_pages#school'
  end
end
