class OrdersController < ApplicationController

before_action :set_order, only: [:show,:edit,:update,:destroy]


  def index
      if current_user.client == true

        @appointment_rel = Appointment.where(user_id: current_user.id).last
        @orders = Order.all.where(appointment_id: @appointment_rel.id).order("id desc")
      else
        @orders = Order.all.order("id desc")
      end
  end

  def show

  end

  def new
       if current_user.client == true
        redirect_to appointments_path
       else
        @order = Order.new
      end
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to orders_path
  end

  def edit

  end

  def update
    @order.update(order_params)
    redirect_to orders_path
  end

  def destroy
    @order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:diagnostic, :solution, :price, :delivery_date, :status, :appointment_id)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
