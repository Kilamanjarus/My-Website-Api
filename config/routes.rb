Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/blogs" => "blog_posts#index"
  post "/blogs" => "blog_posts#create"
  get "/blogs/:id" => "blog_posts#show"
  patch "/blogs/:id" => "blog_posts#update"
  delete "/blogs/:id" => "blog_posts#destroy"
end
