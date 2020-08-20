Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/buildings'
  get 'welcome/about_us'
  get 'welcome/contact'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
