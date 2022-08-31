class ProductsController < ApplicationController
  def all_products
    all = Product.all
    render json: all.as_json
  end

  def first_product
    first = Product.first
    render json: first.as_json
  end

  def second_product
    second = Product.second
    render json: second.as_json
  end

  def third_product
    third = Product.third
    render json: third.as_json
  end

  def fourth_product
    fourth = Product.fourth
    render json: fourth.as_json
  end
end
