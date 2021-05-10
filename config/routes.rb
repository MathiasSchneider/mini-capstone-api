Rails.application.routes.draw do
get "/products", controller: "products", action: "index"

post "products", controller: "products", action: "create"

get "/products/:id", controller: "products", action: "show"

patch "products/:id", controller: "products", action: "update"

delete "products/:id", controller: "products", action: "destroy"

#query parameter
get "/query_param" => "products#single_param"

#segment parameter
get "/segment_param/:single_product" => "products#single_param"
end
