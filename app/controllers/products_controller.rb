class ProductsController < ApplicationController
  def all_products
    products = Product.all
    render json: products.as_json
  end

  def one_product
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end
end
