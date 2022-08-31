class ProductsController < ApplicationController
  def all_products
    all = Products.all
    render json: all.as_json
  end

  def first_product
    first = Products.first_product
    render json: first.as_json
  end

  def second_product
    second = Products.second_product
    render json: second.as_json
  end

  def third_product
    third = Products.third_product
    render json: third.as_json
  end

  def fourth_product
    fourth = Products.fourth_product
    render json: fourth.as_json
  end
end
