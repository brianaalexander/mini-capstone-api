class ProductsController < ApplicationController
  def index
    all = Product.all
    render json: all.as_json
  end

  def create
    product = Product.new(name: params["name"],
                          price: params["price"],
                          image_url: params["image_url"],
                          description: params["description"])
    product.save
    render json: product.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
