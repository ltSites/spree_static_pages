Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :itsites_page_menus, except: [:show]
    resources :itsites_page_blocks, except: [:show]
  end

  get "page-:url" => "itsites_page_blocks#show", as: "itsites_static_page"

end