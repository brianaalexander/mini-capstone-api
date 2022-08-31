Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/one_product/:id", controller: "products", action: "one_product_method"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
end
