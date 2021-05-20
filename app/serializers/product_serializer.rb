class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :quantity, :is_discounted?, :tax, :total, :supplier_name, :images
end
