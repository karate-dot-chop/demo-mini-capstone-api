class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :quantity

  belongs_to :supplier
  has_many :images
  has_many :categories
end
