PharmkonR::Application.routes.draw do

  devise_for :admin_users, :class_name => "Admin::User", :controllers => {
    :sessions      => "admin/user/sessions"
  }
  devise_for :users, :class_name => "User", :controllers => {
    :sessions      => "user/sessions",
    :registrations => "user/registrations",
  }

  root :to => "students#index", :as => "user_root_path"

  resources :assign, only: [:index, :show] do
    collection do
      get :edit
      post :update
    end
  end

  resources :students, only: [:index, :show]

  scope "admin" do
    root :to => "admin/top#index", :as => "admin_user_root_path"
  end
  namespace :admin do
    resources :top
    resources :labolatories
    resources :students do
      collection do
        delete :destroy_all
      end
    end
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
