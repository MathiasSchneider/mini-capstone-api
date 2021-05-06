Rails.application.routes.draw do
get "all_products", controller: "products", action: "all_product_method"
get "keith_product", controller: "products", action: "keith_product_method"
get "ross_product", controller: "products", action: "ross_product_method"
get "rizzo_product", controller: "products", action: "rizzo_product_method"
get "zobrist_product", controller: "products", action: "zobrist_product_method"
end
