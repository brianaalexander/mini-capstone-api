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
    @product = product
    render template: "products/create"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def update
    product = Product.find_by(id: params["id"])
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.save
    @product = product
    render template: "products/update"
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
  end
end
