class Api::Doctor::AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :update, :destroy]
  before_action :authenticate_doctor!
  # GET /appointments
  def index
    @appointments = current_doctor.appointments

    render json: @appointments
  end

  # GET /appointments/1
  def show
    render json: @appointment
  end

  # POST /appointments
  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.doctor = current_doctor
    if @appointment.save
      render json: @appointment, status: :created, location: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointments/1
  def update
    if @appointment.update(appointment_params) and @appointment.update(doctor: current_doctor)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  def destroy
    if @appointment.doctor == current_doctor
      @appointment.destroy
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appointment_params
      params.require(:appointment).permit(:schedule, :user_id, :doctor_id, :comments, :cancelled)
    end
end
