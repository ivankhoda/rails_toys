class ProductController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    products = Product.all
    render json: ProductSerializer.new(products).serializable_hash
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: ProductSerializer.new(product).serializable_hash
  end

  def create
    product = Product.new(product_params)
    if product.save
      render json: ProductSerializer.new(product).serializable_hash
    else
      render json: { error: product.errors.message }
    end
  end

  def update
    product = Product.find_by(id: params[:id])
    if product.update(product_params)
      render json: ProductSerializer.new(product).serializable_hash
    else
      render json: { error: product.errors.messages }, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    if product.destroy
      render json: 'Product was successfully deleted!'
    else
      render json: { error: product.errors.messages }, status: 422
    end
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :price, :comment)
  end
end
