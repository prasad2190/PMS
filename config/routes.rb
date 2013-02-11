Pms::Application.routes.draw do
  #get 'projects/index' 
  #get 'milestones/index'

  # post 'projects/create'
  resources :projects 
  resources :milestones
  resources :tasks
  resources :users

############





  #****************************************USER*********************************************
 # match 'users'=> 'users#index',:method=>:get,:as=>"users" 
  #match 'users/new'=>"users#new", :method=>:get,:as=>"new_users"
  #match 'users/create'=>"users#create",:method=>:get,:as=>"create_users"
  #match 'users/:id/edit'=>"users#edit",:method=>"get",:as=>"edit_users"
  #match 'users/:id/update'=>"users#update",:method=>"put",:as=>"update_user"
  #match 'users/:id'=>"users#show",:method=>:get,:as=>"user"
  #match 'users/:id/destroy'=>"users#destroy",:method=>:delete,:as=>"destroy_user"



#*****************************************Project****************************************************

=begin
  
rescue Exception => e
  
end
  match 'projects'=> 'projects#index',:method=>:get,:as=>"projects"
  match 'projects/new'=>"projects#new", :method=>:get,:as=>"new_projects"
  match 'projects/create'=>"projects#create",:method=>:post,:as=>"create_projects"
  match 'projects/:id/edit'=>"projects#edit",:method=>"get",:as=>"edit_projects"
  match 'projects/:id/update'=>"projects#update",:method=>"put",:as=>"update_project"
  match 'projects/:id'=>"projects#show",:method=>:get,:as=>"project"
  match 'projects/:id/destroy'=>"projects#destroy",:method=>:delete,:as=>"destroy_project"

#********************************************milestone********************************88
  match 'milestones'=> 'milestones#index',:method=>:get,:as=>"milestones" 
  match 'milestones/new'=>"milestones#new", :method=>:get,:as=>"new_milestones"
  match 'milestones/create'=>"milestones#create",:method=>:get,:as=>"create_milestones"
  match 'milestones/:id/edit'=>"milestones#edit",:method=>"get",:as=>"edit_milestones"
  match 'milestones/:id/update'=>"milestones#update",:method=>"put",:as=>"update_milestone"
  match 'milestones/:id'=>"milestones#show",:method=>:get,:as=>"milestone"
  match 'milestones/:id/destroy'=>"milestones#destroy",:method=>:delete,:as=>"destroy_milestone"



#*********************************************Task*************************************

  match 'tasks'=> 'tasks#index',:method=>:get,:as=>"tasks" 
  match 'tasks/new'=>"tasks#new", :method=>:get,:as=>"new_tasks"
  match 'tasks/create'=>"tasks#create",:method=>:get,:as=>"create_tasks"
  match 'tasks/:id/edit'=>"tasks#edit",:method=>"get",:as=>"edit_tasks"
  match 'tasks/:id/update'=>"tasks#update",:method=>"put",:as=>"update_task"
  match 'tasks/:id'=>"tasks#show",:method=>:get,:as=>"task"
  match 'tasks/:id/destroy'=>"tasks#destroy",:method=>:delete,:as=>"destroy_task"

=end

 # resources :projects do
  #  collection do
  #    get '/home'
  #  end
  #end
  #root :to => 'projects#index'
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
