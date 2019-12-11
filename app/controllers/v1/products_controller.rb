# frozen_string_literal: true

class V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: { entries: products }
  end

  def create
    product = Product.create(product_params)
    if product.persisted?
      render json: { message: 'Product created successfully' }, status: 201
    else
      render json: { error_message: 'Unable to create product' }, status: 422
    end
  end

  private

  def product_params
    params.require(:product).permit(:barcode, :title, :quantity, :description)
  end
end
