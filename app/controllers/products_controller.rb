class ProductsController < ApplicationController
  def all_products
    all = Product.all
    render json: all.as_json
  end

  def one_product_method
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
