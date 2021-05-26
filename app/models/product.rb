class Product < ApplicationRecord

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  belongs_to :supplier
  has_many :images #array of image objects
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  def supplier_name
    supplier.name
  end

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}


  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end