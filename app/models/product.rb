class Product < ApplicationRecord
  validates :price, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
