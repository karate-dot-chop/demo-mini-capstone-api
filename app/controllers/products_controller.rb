class ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    products = Product.all

    if params[:category]
      category = Category.find_by("name iLIKE ?", params[:category])
      products = category.products
    end

    # if params[:search]
    #   products = products.where("name LIKE ?", "%#{params[:search]}%")
    # end

    # if params[:discount]
    #   products = products.where("price < ?", 10)
    # end

    # if params[:sort] == "price" && params[:sort_order] == "asc"
    #   products = products.order(price: :asc)
    # elsif params[:sort] == "price" && params[:sort_order] == "desc"
    #   products = products.order(price: :desc)
    # else
    #   products = products.order(id: :asc)
    # end

    render json: products.order(:id)
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
      quantity: params[:quantity]
    )
    if product.save
      if params[:url]
        Image.create(
          url: params[:url],
          product_id: product.id
        )
      end
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product destroyed successfully!" }
  end
end