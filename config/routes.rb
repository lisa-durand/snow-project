Rails.application.routes.draw do
  scope '(:locale)' do
    root 'static_pages#faq'
  end
end
