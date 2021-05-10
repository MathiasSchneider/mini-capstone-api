Rails.application.routes.draw do
get "/products", controller: "products", action: "index"

# get "/keith_product", controller: "products", action: "keith_product_method"
# get "/ross_product", controller: "products", action: "ross_product_method"
# get "/rizzo_product", controller: "products", action: "rizzo_product_method"
# get "/zobrist_product", controller: "products", action: "zobrist_product_method"

get "/products/:id", controller: "products", action: "show"

#query parameter
get "/query_param" => "products#single_param"

#segment parameter
get "/segment_param/:single_product" => "products#single_param"
end
