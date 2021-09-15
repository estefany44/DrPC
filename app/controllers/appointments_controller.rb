class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
    
  def index 
    
    if current_user.client == true
      
      @appointments = Appointment.where(user_id: current_user.id)
    else
      @appointments = Appointment.all
      
    end
  end 
  
  def show
  end
  
  def new 
    @appointment = Appointment.new
  end
  
  def create 
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @appointment.save
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else 
      @appointment.user = nil
      @appointments = current_user.appointments.select { |a| a.persisted? }
      render :new
    end
  end

  def edit 
    @appointment.user = current_user
  end
  
  def update 
    if 
      @appointment.update(appointment_params)
      redirect_to appointments_path
    else 
      set_appointments
      render :edit
    end
  end
  
  def destroy 
    @appointment.destroy 
    redirect_to appointments_path
  end  
  private

  def appointment_params
    params.require(:appointment).permit(:user_id, :start_date, :description, :status, :time)
  end
    
  def set_appointment
  @appointment = Appointment.find(params[:id])
  
  # @appointment = current_user.appointments.find_by(id: params[:id])
  #   if @appointment.nil? 
  #     flash[:error] = "Appointment not found."
  #     redirect_to appointments_path
  #   end
  end
  
  # def set_appointments
  #   @appointments = current_user.appointments.order(appointment_time: :desc)
  # end
end
