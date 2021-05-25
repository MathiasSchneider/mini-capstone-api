Rails.application.routes.draw do
get "/products", controller: "products", action: "index"
post "/products", controller: "products", action: "create"
get "/products/:id", controller: "products", action: "show"
patch "/products/:id", controller: "products", action: "update"
delete "/products/:id", controller: "products", action: "destroy"

post "/users", controller: "users", action: "create"
post "/sessions", controller: "sessions", action: "create"

get "/orders", controller: "orders", action: "index"
post "/orders", controller: "orders", action: "create"
get "/orders/:id", controller: "orders", action: "show"

# #query parameter
# get "/query_param" => "products#single_param"

# #segment parameter
# get "/segment_param/:single_product" => "products#single_param"
end
