class V1::ProductsController < ApplicationController
  def create
    product = products.create(product_params)
    if product.persisted?
      render json: { message: 'Product created successfully' }, status: 201
    else
      render json: {error_message: 'Unable to create product' }, status: 422
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:barcode, :title, :quantity, :description)
  end
end
