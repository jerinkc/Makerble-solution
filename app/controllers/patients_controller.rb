class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show edit update destroy]

  def index
    @patients = Patient.all
  end

  def show; end

  def new
    @patient = Patient.new
  end

  def edit; end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to patients_url, notice: 'Patient was successfully created.'
    else
      flash[:alert] = @patient.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @patient.update(patient_params)
      redirect_to patient_url(@patient), notice: 'Patient was successfully updated.'
    else
      flash[:alert] = @patient.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @patient.destroy

    redirect_to patients_url, notice: 'Patient was successfully destroyed.'
  end

  def registration_progress
    @progress = Patient.group("DATE(created_at)").count
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:email, :full_name, :phone)
  end
end
