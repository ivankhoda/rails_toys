class OrderController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    order = Order.all
    render json: OrderSerializer.new(order).serializable_hash
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: OrderSerializer.new(order).serializable_hash
  end

  def create
    order = Order.new(order_params)

    if order.save
      render json: OrderSerializer.new(order).serializable_hash
    else
      render json: { error: order.errors.message }
    end
  end

  def update
    order = Order.find_by(id: params[:id])
    if order.update(order_params)
      render json: OrderSerializer.new(order).serializable_hash
    else
      render json: { error: order.errors.messages }, status: 422
    end
  end

  def destroy
    order = Order.find_by(id: params[:id])
    if order.destroy
      render json: 'Order was successfully deleted!'
    else
      render json: { error: order.errors.messages }, status: 422
    end
  end

  private

  def order_params
    params.require(:order).permit(:order_id, :customer, :total_price, products: [])
  end
end
