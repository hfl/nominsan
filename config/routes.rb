Rails.application.routes.draw do
  resources :guides
  get 'home/index'
  get 'home/search'
  get 'home/help'
  get 'home/about'
  #front
  resources :literatures do
    resources :titles do
      resources :alternative_titles
    end
    resources :creators, :contributors, :subjects, :descriptions, :tempus, :formats, :types, :sources, :languages, :identifiers, :publishers, :marcs, :degrees, :coverages, :rights, :editions, :relations, :tocs, :prices
  end

  #admin part
  namespace :admin do
    get 'dashboard/home'
    get 'dashboard/help'
    get 'dashboard/about'
    resources :literatures do
      resources :titles do
        resources :alternative_titles
      end
      resources :creators, :contributors, :subjects, :descriptions, :tempus, :formats, :types, :sources, :languages, :identifiers, :publishers, :marcs, :degrees, :coverages, :rights, :editions, :relations, :tocs, :prices
    end
    resources :currencies, :relation_types, :edition_types, :right_types, :coverage_types, :marc_types, :identifier_types, :language_types, :cadal_types, :format_mimes, :format_extents, :date_types, :date_xses, :description_types, :subject_types, :roles
    root 'dashboard#home'
  end

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
