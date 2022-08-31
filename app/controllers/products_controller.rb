class ProductsController < ApplicationController
  def index
    all = Product.all
    render json: all.as_json
  end

  def create
    product = Product.new(name: "jacket",
                          price: 25,
                          image_url: "#",
                          description: "wear when you are cold")
    product.save
    render json: product.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
